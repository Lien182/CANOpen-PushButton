/**
  ******************************************************************************
  * File Name          : main.c
  * Description        : Main program body
  ******************************************************************************
  ** This notice applies to any and all portions of this file
  * that are not between comment pairs USER CODE BEGIN and
  * USER CODE END. Other portions of this file, whether 
  * inserted by the user or by software development tools
  * are owned by their respective copyright owners.
  *
  * COPYRIGHT(c) 2017 STMicroelectronics
  *
  * Redistribution and use in source and binary forms, with or without modification,
  * are permitted provided that the following conditions are met:
  *   1. Redistributions of source code must retain the above copyright notice,
  *      this list of conditions and the following disclaimer.
  *   2. Redistributions in binary form must reproduce the above copyright notice,
  *      this list of conditions and the following disclaimer in the documentation
  *      and/or other materials provided with the distribution.
  *   3. Neither the name of STMicroelectronics nor the names of its contributors
  *      may be used to endorse or promote products derived from this software
  *      without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "stm32f0xx_hal.h"
#include "stm32f042_hal_exclude.h"

/* USER CODE BEGIN Includes */
#include "../CANopenNode/CANopen.h"
/* USER CODE END Includes */

/* Private variables ---------------------------------------------------------*/
ADC_HandleTypeDef hadc;
DMA_HandleTypeDef hdma_adc;

CAN_HandleTypeDef hcan;

I2C_HandleTypeDef hi2c1;

TIM_HandleTypeDef htim1;

/* USER CODE BEGIN PV */
/* Private variables ---------------------------------------------------------*/

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_DMA_Init(void);
static void MX_ADC_Init(void);
static void MX_I2C1_Init(void);
static void MX_TIM1_Init(void);

/* USER CODE BEGIN PFP */
/* Private function prototypes -----------------------------------------------*/
#define TMR_TASK_INTERVAL   (2000)          /* Interval of tmrTask thread in microseconds */
#define INCREMENT_1MS(var)  (var+=2)         /* Increment 1ms variable in tmrTask */

#define WAIT_MS(x)	{delay_cnt = x>>1; while(delay_cnt > 0);}	


/* Global variables and objects */
volatile uint16_t CO_timer1ms = 0U;   /* variable increments each millisecond */
volatile uint16_t adc_data[10];
volatile uint32_t temp_filtered = 0;
volatile uint32_t bNewData = 0;
volatile int32_t  temperature = 0, reference, internal_temperature;
volatile uint32_t gotousermenu = 0;
volatile uint32_t delay_cnt = 0;

void usermenu(void);
void WriteNumbertoLeds(uint8_t n);
/* USER CODE END PFP */


/*Node ID in Flash Memory*/
uint32_t nodeid __attribute__((at(0x8007C00))) = 12;

/* USER CODE BEGIN 0 */
/* helpers */
void CANrx_lockCbSync(bool_t syncReceived) {
    if(syncReceived) {
        /* disable CAN receive, untill RPDOs are processed. */
    }
}

void WriteNewNodeId(uint32_t nodeid)
{
	uint32_t PAGEError = 0;
	FLASH_EraseInitTypeDef EraseInitStruct;
	EraseInitStruct.TypeErase = FLASH_TYPEERASE_PAGES;
	EraseInitStruct.PageAddress = 0x08007C00; //Specify sector number
	EraseInitStruct.NbPages = 1; 
	HAL_FLASH_Unlock();
	__HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_EOP | FLASH_FLAG_PGERR | FLASH_SR_WRPERR );
	if(HAL_FLASHEx_Erase(&EraseInitStruct, &PAGEError) != HAL_OK) {
    _Error_Handler(" ", 0);
	}
	HAL_FLASH_Program(FLASH_TYPEPROGRAM_WORD, 0x08007C00, nodeid);
	HAL_FLASH_Lock();

}



/* USER CODE END 0 */

int main(void)
{
  /* USER CODE BEGIN 1 */
	CO_NMT_reset_cmd_t reset = CO_RESET_NOT;
  /* USER CODE END 1 */

  /* MCU Configuration----------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
	__HAL_FLASH_PREFETCH_BUFFER_ENABLE();
  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_ADC_Init();
  //MX_I2C1_Init();
  MX_TIM1_Init();
	
	/* USER CODE BEGIN 2 */
	RUN_LED_GPIO_Port->BRR = (uint32_t)RUN_LED_Pin;
	NVIC_EnableIRQ(TIM1_CC_IRQn);
	TIM1->CR1  |= TIM_CR1_CEN;	
	TIM1->DIER |= TIM_IT_CC1;

	WriteNumbertoLeds(0xff);
	
	ADC_Start_DMA(&hadc,(uint32_t*)adc_data,10);
	 
  /* USER CODE END 2 */
	LED_BL_GPIO_Port->BSRR = (uint32_t)LED_BL_Pin;
  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
    while(reset != CO_RESET_APP){
		/* CANopen communication reset - initialize CANopen objects *******************/
        CO_ReturnError_t err;
        uint16_t timer1msPrevious;

        /* disable CAN and CAN interrupts */
        CO->CANmodule[0]->CANnormal = false;

        /* initialize CANopen */
        err = CO_init(0/* CAN module address */, 62/* NodeID */, 100 /* bit rate */);
        if(err != CO_ERROR_NO){
						_Error_Handler(" ", err);
        }

        /* Configure callback functions */
        CO_SYNC_initCallback(CO->SYNC, CANrx_lockCbSync);

        /* start CAN */
        CO_CANsetNormalMode(CO->CANmodule[0]);

        reset = CO_RESET_NOT;
        timer1msPrevious = CO_timer1ms;

        while(reset == CO_RESET_NOT){
/* loop for normal program execution ******************************************/
            uint16_t timer1msCopy, timer1msDiff;

            timer1msCopy = CO_timer1ms;
            timer1msDiff = timer1msCopy - timer1msPrevious;
            timer1msPrevious = timer1msCopy;

											

            /* CANopen process */
            reset = CO_process(CO, timer1msDiff, NULL);

						HAL_GPIO_WritePin(RUN_LED_GPIO_Port, RUN_LED_Pin,(GPIO_PinState)((LED_GREEN_RUN(CO->NMT)>0 ? 1 : 0) ));
            /* Nonblocking application code may go here. */

            /* Process EEPROM */
						
						if(bNewData)
						{
							bNewData = 0;
							CO_OD_RAM.temperature[0] = (int16_t)temp_filtered;
							CO_OD_RAM.readAnalogueInput16Bit[0] = (int16_t)temp_filtered;
							CO_OD_RAM.voltage[0] = (int16_t)internal_temperature;
						}
//						if(gotousermenu == 1UL)
//						{
//							reset = CO_RESET_COMM;
//						}
        }
				
				//Settings menu for nodeid
				//if(gotousermenu != 0)
				//	usermenu();
				
    }
/* program exit ***************************************************************/
    /* stop threads */

    /* delete objects from memory */
    CO_delete(0/* CAN module address */);


    /* reset */
    return 0;
  /* USER CODE END 3 */

}
/** System Clock Configuration
*/
void SystemClock_Config(void)
{

  RCC_OscInitTypeDef RCC_OscInitStruct;
  RCC_ClkInitTypeDef RCC_ClkInitStruct;
  RCC_PeriphCLKInitTypeDef PeriphClkInit;

    /**Initializes the CPU, AHB and APB busses clocks 
    */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = 16;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL6;
  RCC_OscInitStruct.PLL.PREDIV = RCC_PREDIV_DIV1;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

    /**Initializes the CPU, AHB and APB busses clocks 
    */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_1) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

  PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_I2C1;
  PeriphClkInit.I2c1ClockSelection = RCC_I2C1CLKSOURCE_HSI;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

}

/* ADC init function */
static void MX_ADC_Init(void)
{

  ADC_ChannelConfTypeDef sConfig;

    /**Configure the global features of the ADC (Clock, Resolution, Data Alignment and number of conversion) 
    */
  hadc.Instance = ADC1;
  hadc.Init.ClockPrescaler = ADC_CLOCK_SYNC_PCLK_DIV4;
  hadc.Init.Resolution = ADC_RESOLUTION_12B;
  hadc.Init.DataAlign = ADC_DATAALIGN_RIGHT;
  hadc.Init.ScanConvMode = ADC_SCAN_DIRECTION_FORWARD;
  hadc.Init.EOCSelection = ADC_EOC_SINGLE_CONV;
  hadc.Init.LowPowerAutoWait = DISABLE;
  hadc.Init.LowPowerAutoPowerOff = DISABLE;
  hadc.Init.ContinuousConvMode = ENABLE;
  hadc.Init.DiscontinuousConvMode = DISABLE;
  hadc.Init.ExternalTrigConv = ADC_SOFTWARE_START;
  hadc.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_NONE;
  hadc.Init.DMAContinuousRequests = ENABLE;
  hadc.Init.Overrun = ADC_OVR_DATA_PRESERVED;
  if (HAL_ADC_Init(&hadc) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

    /**Configure for the selected ADC regular channel to be converted. 
    */
  sConfig.Channel = ADC_CHANNEL_6;
  sConfig.Rank = ADC_RANK_CHANNEL_NUMBER;
  sConfig.SamplingTime = ADC_SAMPLETIME_239CYCLES_5;
  if (HAL_ADC_ConfigChannel(&hadc, &sConfig) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

    /**Configure for the selected ADC regular channel to be converted. 
    */
  sConfig.Channel = ADC_CHANNEL_7;
  if (HAL_ADC_ConfigChannel(&hadc, &sConfig) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

    /**Configure for the selected ADC regular channel to be converted. 
    */
  sConfig.Channel = ADC_CHANNEL_TEMPSENSOR;
  if (HAL_ADC_ConfigChannel(&hadc, &sConfig) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

    /**Configure for the selected ADC regular channel to be converted. 
    */
  sConfig.Channel = ADC_CHANNEL_VREFINT;
  if (HAL_ADC_ConfigChannel(&hadc, &sConfig) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

    /**Configure for the selected ADC regular channel to be converted. 
    */
  sConfig.Channel = ADC_CHANNEL_VBAT;
  if (HAL_ADC_ConfigChannel(&hadc, &sConfig) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

}


/* I2C1 init function */
static void MX_I2C1_Init(void)
{

  hi2c1.Instance = I2C1;
  hi2c1.Init.Timing = 0x2000090E;
  hi2c1.Init.OwnAddress1 = 0;
  hi2c1.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
  hi2c1.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
  hi2c1.Init.OwnAddress2 = 0;
  hi2c1.Init.OwnAddress2Masks = I2C_OA2_NOMASK;
  hi2c1.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
  hi2c1.Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;
  if (HAL_I2C_Init(&hi2c1) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

    /**Configure Analogue filter 
    */
  if (HAL_I2CEx_ConfigAnalogFilter(&hi2c1, I2C_ANALOGFILTER_ENABLE) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

    /**Configure Digital filter 
    */
  if (HAL_I2CEx_ConfigDigitalFilter(&hi2c1, 0) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

}

/* TIM1 init function */
static void MX_TIM1_Init(void)
{

  TIM_ClockConfigTypeDef sClockSourceConfig;
  TIM_MasterConfigTypeDef sMasterConfig;
  TIM_OC_InitTypeDef sConfigOC;
  TIM_BreakDeadTimeConfigTypeDef sBreakDeadTimeConfig;

  htim1.Instance = TIM1;
  htim1.Init.Prescaler = 96;
  htim1.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim1.Init.Period = 1000;
  htim1.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim1.Init.RepetitionCounter = 0;
  htim1.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_ENABLE;
  if (HAL_TIM_Base_Init(&htim1) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim1, &sClockSourceConfig) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

  if (HAL_TIM_OC_Init(&htim1) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim1, &sMasterConfig) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

  sConfigOC.OCMode = TIM_OCMODE_TIMING;
  sConfigOC.Pulse = 0;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCNPolarity = TIM_OCNPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
  sConfigOC.OCIdleState = TIM_OCIDLESTATE_RESET;
  sConfigOC.OCNIdleState = TIM_OCNIDLESTATE_RESET;
  if (HAL_TIM_OC_ConfigChannel(&htim1, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

  sBreakDeadTimeConfig.OffStateRunMode = TIM_OSSR_DISABLE;
  sBreakDeadTimeConfig.OffStateIDLEMode = TIM_OSSI_DISABLE;
  sBreakDeadTimeConfig.LockLevel = TIM_LOCKLEVEL_OFF;
  sBreakDeadTimeConfig.DeadTime = 0;
  sBreakDeadTimeConfig.BreakState = TIM_BREAK_DISABLE;
  sBreakDeadTimeConfig.BreakPolarity = TIM_BREAKPOLARITY_HIGH;
  sBreakDeadTimeConfig.AutomaticOutput = TIM_AUTOMATICOUTPUT_DISABLE;
  if (HAL_TIMEx_ConfigBreakDeadTime(&htim1, &sBreakDeadTimeConfig) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

}

/** 
  * Enable DMA controller clock
  */
static void MX_DMA_Init(void) 
{
  /* DMA controller clock enable */
  __HAL_RCC_DMA1_CLK_ENABLE();

  /* DMA interrupt init */
  /* DMA1_Channel1_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Channel1_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(DMA1_Channel1_IRQn);

}

/** Configure pins as 
        * Analog 
        * Input 
        * Output
        * EVENT_OUT
        * EXTI
*/
static void MX_GPIO_Init(void)
{

  GPIO_InitTypeDef GPIO_InitStruct;

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOF_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOB, LED_1_Pin|LED_2_Pin|LED_3_Pin|LED_4_Pin 
                          |LED_5_Pin|LED_6_Pin|LED_BL_Pin|RUN_LED_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pins : Taster_1_Pin Taster_2_Pin Taster_3_Pin Taster_4_Pin 
                           Taster_5_Pin Taster_6_Pin */
  GPIO_InitStruct.Pin = Taster_1_Pin|Taster_2_Pin|Taster_3_Pin|Taster_4_Pin 
                          |Taster_5_Pin|Taster_6_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pins : LED_1_Pin LED_2_Pin LED_3_Pin LED_4_Pin 
                           LED_5_Pin LED_6_Pin LED_BL_Pin RUN_LED_Pin */
  GPIO_InitStruct.Pin = LED_1_Pin|LED_2_Pin|LED_3_Pin|LED_4_Pin 
                          |LED_5_Pin|LED_6_Pin|LED_BL_Pin|RUN_LED_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);
	
	//DEBUG Pins
	/*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOF, DEBUG_1_Pin | DEBUG_2_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pins : Taster_1_Pin Taster_2_Pin Taster_3_Pin Taster_4_Pin 
                           Taster_5_Pin Taster_6_Pin */
  GPIO_InitStruct.Pin =  DEBUG_1_Pin | DEBUG_2_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOF, &GPIO_InitStruct);
	
	

}

/* USER CODE BEGIN 4 */

/* timer thread executes in constant intervals ********************************/
void tmrTask_thread(void){
        /* sleep for interval */

    INCREMENT_1MS(CO_timer1ms);

		//DEBUG_1_Port->ODR ^= DEBUG_2_Pin;
		
		if(CO->CANmodule[0]->CANnormal) {
				bool_t syncWas;

				/* Process Sync and read inputs */
				syncWas = CO_process_SYNC_RPDO(CO, TMR_TASK_INTERVAL);

				/* Reenable CANrx, if it was disabled by SYNC callback */
				
				/* Further I/O or nonblocking application code may go here. */
				if(gotousermenu == 0)
				{
					if(CO_OD_RAM.writeOutput8Bit[0] & 1)
						LED_1_GPIO_Port->BSRR = (uint32_t)LED_1_Pin;
					else
						LED_1_GPIO_Port->BRR  = (uint32_t)LED_1_Pin;
					
					if(CO_OD_RAM.writeOutput8Bit[0] & 2)
						LED_2_GPIO_Port->BSRR = (uint32_t)LED_2_Pin;
					else
						LED_2_GPIO_Port->BRR  = (uint32_t)LED_2_Pin;
					
					if(CO_OD_RAM.writeOutput8Bit[0] & 4)
						LED_3_GPIO_Port->BSRR = (uint32_t)LED_3_Pin;
					else
						LED_3_GPIO_Port->BRR  = (uint32_t)LED_3_Pin;
					
					if(CO_OD_RAM.writeOutput8Bit[0] & 8)
						LED_4_GPIO_Port->BSRR = (uint32_t)LED_4_Pin;
					else
						LED_4_GPIO_Port->BRR  = (uint32_t)LED_4_Pin;
					
					if(CO_OD_RAM.writeOutput8Bit[0] & 16)
						LED_5_GPIO_Port->BSRR = (uint32_t)LED_5_Pin;
					else
						LED_5_GPIO_Port->BRR  = (uint32_t)LED_5_Pin;
					
					if(CO_OD_RAM.writeOutput8Bit[0] & 32)
						LED_6_GPIO_Port->BSRR = (uint32_t)LED_6_Pin;
					else
						LED_6_GPIO_Port->BRR  = (uint32_t)LED_6_Pin;
					
					if(CO_OD_RAM.writeOutput8Bit[0] & 64)
						LED_BL_GPIO_Port->BSRR = (uint32_t)LED_BL_Pin;
					else
						LED_BL_GPIO_Port->BRR  = (uint32_t)LED_BL_Pin;
					

          uint8_t oldvalue = CO_OD_RAM.readInput8Bit[0];

					CO_OD_RAM.readInput8Bit[0] = 0;
					if ((Taster_1_GPIO_Port->IDR & Taster_1_Pin) != (uint32_t)GPIO_PIN_RESET)
						CO_OD_RAM.readInput8Bit[0] |= 1;
					if ((Taster_2_GPIO_Port->IDR & Taster_2_Pin) != (uint32_t)GPIO_PIN_RESET)
						CO_OD_RAM.readInput8Bit[0] |= 2;			
					if ((Taster_3_GPIO_Port->IDR & Taster_3_Pin) != (uint32_t)GPIO_PIN_RESET)
						CO_OD_RAM.readInput8Bit[0] |= 4;
					if ((Taster_4_GPIO_Port->IDR & Taster_4_Pin) != (uint32_t)GPIO_PIN_RESET)
						CO_OD_RAM.readInput8Bit[0] |= 8;				
					if ((Taster_5_GPIO_Port->IDR & Taster_5_Pin) != (uint32_t)GPIO_PIN_RESET)
						CO_OD_RAM.readInput8Bit[0] |= 16;
					if ((Taster_6_GPIO_Port->IDR & Taster_6_Pin) != (uint32_t)GPIO_PIN_RESET)
						CO_OD_RAM.readInput8Bit[0] |= 32;

          //set sendRequest for positive edge (async-mode)
          if(oldvalue ^ CO_OD_RAM.readInput8Bit[0])
            CO->TPDO[0]->sendRequest = 1;

					
				}
				/* Write outputs */
				CO_process_TPDO(CO, syncWas, TMR_TASK_INTERVAL);

				/* verify timer overflow */
				if(0) {
						CO_errorReport(CO->em, CO_EM_ISR_TIMER_OVERFLOW, CO_EMC_SOFTWARE_INTERNAL, 0U);
				}
		
    }
}


void WriteNumbertoLeds(uint8_t n)
{
	if(n & 1)
		LED_1_GPIO_Port->BSRR = (uint32_t)LED_1_Pin;
	else
		LED_1_GPIO_Port->BRR  = (uint32_t)LED_1_Pin;

	if(n & 2)
		LED_2_GPIO_Port->BSRR = (uint32_t)LED_2_Pin;
	else
		LED_2_GPIO_Port->BRR  = (uint32_t)LED_2_Pin;

	if(n & 4)
		LED_3_GPIO_Port->BSRR = (uint32_t)LED_3_Pin;
	else
		LED_3_GPIO_Port->BRR  = (uint32_t)LED_3_Pin;

	if(n & 8)
		LED_4_GPIO_Port->BSRR = (uint32_t)LED_4_Pin;
	else
		LED_4_GPIO_Port->BRR  = (uint32_t)LED_4_Pin;

	if(n & 16)
		LED_5_GPIO_Port->BSRR = (uint32_t)LED_5_Pin;
	else
		LED_5_GPIO_Port->BRR  = (uint32_t)LED_5_Pin;

	if(n & 32)
		LED_6_GPIO_Port->BSRR = (uint32_t)LED_6_Pin;
	else
		LED_6_GPIO_Port->BRR  = (uint32_t)LED_6_Pin;

	if(n & 64)
		LED_BL_GPIO_Port->BSRR = (uint32_t)LED_BL_Pin;
	else
		LED_BL_GPIO_Port->BRR  = (uint32_t)LED_BL_Pin;
}


void usermenu(void)
{
	uint8_t tmp_nodeid = (uint8_t)nodeid;
	uint8_t old_nodeid = (uint8_t)nodeid;
	
	//Write the initial state
	WriteNumbertoLeds((uint8_t)tmp_nodeid);
	while(gotousermenu != 2)
	{
		if ((Taster_3_GPIO_Port->IDR & Taster_3_Pin) != (uint32_t)GPIO_PIN_RESET)
			if(tmp_nodeid > 2)
				tmp_nodeid--;
		
		if ((Taster_4_GPIO_Port->IDR & Taster_4_Pin) != (uint32_t)GPIO_PIN_RESET)
			if(tmp_nodeid < 126)
				tmp_nodeid++;
			
		WriteNumbertoLeds(tmp_nodeid);	
		WAIT_MS(250);
	}
	//Safe Nodeid after that and restart the button
	
	if(old_nodeid != tmp_nodeid)
		WriteNewNodeId((uint32_t)tmp_nodeid);
	WriteNumbertoLeds(0);
	gotousermenu = 0;
}


/* USER CODE END 4 */




void ShowError(uint32_t direction)
{
    uint32_t cnt = 0;

    while(1)
    {
        LED_1_GPIO_Port->BRR  = (uint32_t)LED_1_Pin;
        LED_2_GPIO_Port->BRR  = (uint32_t)LED_2_Pin;
        LED_3_GPIO_Port->BRR  = (uint32_t)LED_3_Pin;
        LED_4_GPIO_Port->BRR  = (uint32_t)LED_4_Pin;
        LED_5_GPIO_Port->BRR  = (uint32_t)LED_5_Pin;
        LED_6_GPIO_Port->BRR  = (uint32_t)LED_6_Pin;
        LED_BL_GPIO_Port->BRR = (uint32_t)LED_BL_Pin;

        switch(cnt)
        {
            case 0:
                LED_1_GPIO_Port->BSRR = (uint32_t)LED_1_Pin;
                break;
            case 1:
                LED_3_GPIO_Port->BSRR = (uint32_t)LED_3_Pin;
                break;
            case 2:
                LED_5_GPIO_Port->BSRR = (uint32_t)LED_5_Pin;
                break;
            case 3:
                LED_6_GPIO_Port->BSRR = (uint32_t)LED_6_Pin;
                break;
            case 4:
                LED_4_GPIO_Port->BSRR = (uint32_t)LED_4_Pin;
                break;
            case 5:
                LED_2_GPIO_Port->BSRR = (uint32_t)LED_2_Pin;
                break;
        }
        if(direction)
        {
            cnt++;
            if(cnt > 5)
                cnt=0;
        }
        else
        {
            if(cnt == 0)
                cnt = 5;
            else
                cnt--;
        }
        for(volatile uint32_t i = 0; i < 0x000fffff; i++);
    }
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @param  None
  * @retval None
  */
void _Error_Handler(char * file, int line)
{
    /* USER CODE BEGIN Error_Handler_Debug */
    /* User can add his own implementation to report the HAL error return state */
	volatile int l = line;
		while(1)
		{
			
		}
		//ShowError(1);
    /* USER CODE END Error_Handler_Debug */
}

void HardFault_Handler(void)
{
    ShowError(0);
}

void SoftFault_Handler(void)
{
    ShowError(1);
}

#ifdef USE_FULL_ASSERT

/**
   * @brief Reports the name of the source file and the source line number
   * where the assert_param error has occurred.
   * @param file: pointer to the source file name
   * @param line: assert_param error line source number
   * @retval None
   */
void assert_failed(uint8_t* file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
    ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */

}

#endif

/**
  * @}
  */ 

/**
  * @}
*/ 

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
