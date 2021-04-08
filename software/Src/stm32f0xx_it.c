/**
  ******************************************************************************
  * @file    stm32f0xx_it.c
  * @brief   Interrupt Service Routines.
  ******************************************************************************
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
#include "stm32f0xx_hal.h"
#include "stm32f0xx.h"
#include "stm32f0xx_it.h"
#include "stm32f042_hal_exclude.h"
#include "../CANopenNode/CANopen.h"

/* USER CODE BEGIN 0 */
//Temperature
#define VREFINT_CAL_ADDR   0x1FFFF7BA
#define TS_CAL1	(uint16_t*)0x1FFFF7B8UL
#define TS_CAL2	(uint16_t*)0x1FFFF7C2UL

extern volatile uint16_t adc_data[10];
extern volatile uint32_t bNewData;
extern int32_t temperature, internal_temperature;
extern uint32_t temp_filtered;

extern void tmrTask_thread(void);

extern volatile uint32_t gotousermenu;
extern volatile uint32_t delay_cnt;

/* USER CODE END 0 */



/* External variables --------------------------------------------------------*/
extern DMA_HandleTypeDef hdma_adc;
extern CAN_HandleTypeDef hcan;
extern TIM_HandleTypeDef htim1;

/******************************************************************************/
/*            Cortex-M0 Processor Interruption and Exception Handlers         */ 
/******************************************************************************/

/**
* @brief This function handles System tick timer.
*/
void SysTick_Handler(void)
{
  /* USER CODE BEGIN SysTick_IRQn 0 */

  /* USER CODE END SysTick_IRQn 0 */
  HAL_IncTick();
  /* USER CODE BEGIN SysTick_IRQn 1 */

  /* USER CODE END SysTick_IRQn 1 */
}

/******************************************************************************/
/* STM32F0xx Peripheral Interrupt Handlers                                    */
/* Add here the Interrupt Handlers for the used peripherals.                  */
/* For the available peripheral interrupt handler names,                      */
/* please refer to the startup file (startup_stm32f0xx.s).                    */
/******************************************************************************/

/**
* @brief This function handles DMA1 channel 1 interrupt.
*/
void DMA1_Channel1_IRQHandler(void)
{ 	
	int32_t reference = 0;
  /* Clear the transfer complete flag */
	hdma_adc.DmaBaseAddress->IFCR = DMA_FLAG_TC1 << hdma_adc.ChannelIndex;
  /* Process Unlocked */
  __HAL_UNLOCK(&hdma_adc);
  /* USER CODE BEGIN DMA1_Channel1_IRQn 1 */
	
	

	if (adc_data[2] != 0)
		reference = (3300UL * ((uint32_t)*((uint16_t*)VREFINT_CAL_ADDR))) / ((uint32_t)adc_data[2]);
	temperature = (int32_t)adc_data[0]-(int32_t)adc_data[1];
	temperature *= (int32_t)reference;
	temperature >>=11;
	if(temperature & 0x00000001)
			temperature++;
	temperature >>= 1;

	temp_filtered = temp_filtered * 63UL + temperature;
	temp_filtered = temp_filtered >> 5;
	if(temp_filtered & 0x00000001)
		temp_filtered++;
	temp_filtered >>= 1;
						
	internal_temperature = (((int32_t)adc_data[3] * reference / 3300)- (int32_t)*(TS_CAL1) );
	internal_temperature = internal_temperature * 80L;
	internal_temperature = internal_temperature / (int32_t)(*(TS_CAL2) - *(TS_CAL1));
	internal_temperature = internal_temperature + 30;	

	bNewData = 1UL;	
  /* USER CODE END DMA1_Channel1_IRQn 1 */
}

/**
* @brief This function handles TIM1 capture compare interrupt.
*/
void TIM1_CC_IRQHandler(void)
{
  /* USER CODE BEGIN TIM1_CC_IRQn 0 */
	static uint32_t umcnt = 0;
	tmrTask_thread();
  /* USER CODE END TIM1_CC_IRQn 0 */        
	__HAL_TIM_CLEAR_IT(&htim1, TIM_IT_CC1);
  htim1.Channel = HAL_TIM_ACTIVE_CHANNEL_1;
  /* USER CODE BEGIN TIM1_CC_IRQn 1 */

	
	if(((Taster_1_GPIO_Port->IDR & Taster_1_Pin) != (uint32_t)GPIO_PIN_RESET) &&
	((Taster_2_GPIO_Port->IDR & Taster_2_Pin) != (uint32_t)GPIO_PIN_RESET))
	
	{
		umcnt++;
	}
	else
		umcnt = 0;
	
	if(umcnt > 2000) //Button 1 & 2 were pressed for 3s 
	{
		if(gotousermenu == 0)
			gotousermenu = 1;
		else
			gotousermenu = 2;
		umcnt = 0;
	}
		
	if(delay_cnt > 0)
		delay_cnt--;
		
	
  /* USER CODE END TIM1_CC_IRQn 1 */
}

/**
* @brief This function handles HDMI-CEC and CAN global interrupts / HDMI-CEC wake-up interrupt through EXTI line 27.
*/
void CEC_CAN_IRQHandler(void)
{
  /* USER CODE BEGIN CEC_CAN_IRQn 0 */
	if(CO_CANinterrupt(CO->CANmodule[0]))
		return;
  /* USER CODE END CEC_CAN_IRQn 0 */
  uint32_t errorcode = HAL_CAN_ERROR_NONE;

  /* Check Overrun flag for FIFO0 */
  if((__HAL_CAN_GET_FLAG(&hcan, CAN_FLAG_FOV0))&&(__HAL_CAN_GET_IT_SOURCE(&hcan, CAN_IT_FOV0)))
  {
    /* Set CAN error code to FOV0 error */
    errorcode |= HAL_CAN_ERROR_FOV0;

    /* Clear FIFO0 Overrun Flag */
    __HAL_CAN_CLEAR_FLAG(&hcan, CAN_FLAG_FOV0);
  }

  /* Check Overrun flag for FIFO1 */
  if((__HAL_CAN_GET_FLAG(&hcan, CAN_FLAG_FOV1))    &&
     (__HAL_CAN_GET_IT_SOURCE(&hcan, CAN_IT_FOV1)))
  {
    /* Set CAN error code to FOV1 error */
    errorcode |= HAL_CAN_ERROR_FOV1;

    /* Clear FIFO1 Overrun Flag */
    __HAL_CAN_CLEAR_FLAG(&hcan, CAN_FLAG_FOV1);
  }

  /* Check End of transmission flag */
  if(__HAL_CAN_GET_IT_SOURCE(&hcan, CAN_IT_TME))
  {
    /* Check Transmit request completion status */
    if((__HAL_CAN_TRANSMIT_STATUS(&hcan, CAN_TXMAILBOX_0)) ||
       (__HAL_CAN_TRANSMIT_STATUS(&hcan, CAN_TXMAILBOX_1)) ||
       (__HAL_CAN_TRANSMIT_STATUS(&hcan, CAN_TXMAILBOX_2)))
    {
      /* Check Transmit success */
      if((__HAL_CAN_GET_FLAG(&hcan, CAN_FLAG_TXOK0)) ||
         (__HAL_CAN_GET_FLAG(&hcan, CAN_FLAG_TXOK1)) ||
         (__HAL_CAN_GET_FLAG(&hcan, CAN_FLAG_TXOK2)))
      {
        /* Call transmit function */
        //CL: Removed Transmit 
				//CAN_Transmit_IT(&hcan);
      }
      else /* Transmit failure */
      {
        /* Set CAN error code to TXFAIL error */
        errorcode |= HAL_CAN_ERROR_TXFAIL;
      }

      /* Clear transmission status flags (RQCPx and TXOKx) */
      SET_BIT(hcan.Instance->TSR, CAN_TSR_RQCP0  | CAN_TSR_RQCP1  | CAN_TSR_RQCP2 | \
                                   CAN_FLAG_TXOK0 | CAN_FLAG_TXOK1 | CAN_FLAG_TXOK2);
    }
  }
  
	//CL: Removed Receive for FIFO0

  
  /* Check End of reception flag for FIFO1 */
  if((__HAL_CAN_GET_IT_SOURCE(&hcan, CAN_IT_FMP1)) &&
     (__HAL_CAN_MSG_PENDING(&hcan, CAN_FIFO1) != 0U))
  {
    /* Call receive function */
    CAN_Receive_IT(&hcan, CAN_FIFO1);
  }
  
  /* Set error code in handle */
  hcan.ErrorCode |= errorcode;

  /* Check Error Warning Flag */
  if((__HAL_CAN_GET_FLAG(&hcan, CAN_FLAG_EWG))    &&
     (__HAL_CAN_GET_IT_SOURCE(&hcan, CAN_IT_EWG)) &&
     (__HAL_CAN_GET_IT_SOURCE(&hcan, CAN_IT_ERR)))
  {
    /* Set CAN error code to EWG error */
    hcan.ErrorCode |= HAL_CAN_ERROR_EWG;
    /* No need for clear of Error Warning Flag as read-only */
  }
  
  /* Check Error Passive Flag */
  if((__HAL_CAN_GET_FLAG(&hcan, CAN_FLAG_EPV))    &&
     (__HAL_CAN_GET_IT_SOURCE(&hcan, CAN_IT_EPV)) &&
     (__HAL_CAN_GET_IT_SOURCE(&hcan, CAN_IT_ERR)))
  {
    /* Set CAN error code to EPV error */
    hcan.ErrorCode |= HAL_CAN_ERROR_EPV;
    /* No need for clear of Error Passive Flag as read-only */ 
  }
  
  /* Check Bus-Off Flag */
  if((__HAL_CAN_GET_FLAG(&hcan, CAN_FLAG_BOF))    &&
     (__HAL_CAN_GET_IT_SOURCE(&hcan, CAN_IT_BOF)) &&
     (__HAL_CAN_GET_IT_SOURCE(&hcan, CAN_IT_ERR)))
  {
    /* Set CAN error code to BOF error */
    hcan.ErrorCode |= HAL_CAN_ERROR_BOF;
    /* No need for clear of Bus-Off Flag as read-only */
  }
  
  /* Check Last error code Flag */
  if((!HAL_IS_BIT_CLR(hcan.Instance->ESR, CAN_ESR_LEC)) &&
     (__HAL_CAN_GET_IT_SOURCE(&hcan, CAN_IT_LEC))         &&
     (__HAL_CAN_GET_IT_SOURCE(&hcan, CAN_IT_ERR)))
  {
    switch(hcan.Instance->ESR & CAN_ESR_LEC)
    {
      case(CAN_ESR_LEC_0):
          /* Set CAN error code to STF error */
          hcan.ErrorCode |= HAL_CAN_ERROR_STF;
          break;
      case(CAN_ESR_LEC_1):
          /* Set CAN error code to FOR error */
          hcan.ErrorCode |= HAL_CAN_ERROR_FOR;
          break;
      case(CAN_ESR_LEC_1 | CAN_ESR_LEC_0):
          /* Set CAN error code to ACK error */
          hcan.ErrorCode |= HAL_CAN_ERROR_ACK;
          break;
      case(CAN_ESR_LEC_2):
          /* Set CAN error code to BR error */
					hcan.ErrorCode |= HAL_CAN_ERROR_BR;
          break;
      case(CAN_ESR_LEC_2 | CAN_ESR_LEC_0):
          /* Set CAN error code to BD error */
          hcan.ErrorCode |= HAL_CAN_ERROR_BD;
          break;
      case(CAN_ESR_LEC_2 | CAN_ESR_LEC_1):
          /* Set CAN error code to CRC error */
          hcan.ErrorCode |= HAL_CAN_ERROR_CRC;
          break;
      default:
          break;
    }

    /* Clear Last error code Flag */ 
    CLEAR_BIT(hcan.Instance->ESR, CAN_ESR_LEC);
  }

  /* Call the Error call Back in case of Errors */
  if(hcan.ErrorCode != HAL_CAN_ERROR_NONE)
  {
    /* Clear ERRI Flag */ 
    SET_BIT(hcan.Instance->MSR, CAN_MSR_ERRI);

    /* Set the CAN state ready to be able to start again the process */
    hcan.State = HAL_CAN_STATE_READY;

    /* Disable interrupts: */
    /*  - Disable Error warning Interrupt */
    /*  - Disable Error passive Interrupt */
    /*  - Disable Bus-off Interrupt */
    /*  - Disable Last error code Interrupt */
    /*  - Disable Error Interrupt */
    /*  - Disable FIFO 0 message pending Interrupt */
    /*  - Disable FIFO 0 Overrun Interrupt */
    /*  - Disable FIFO 1 message pending Interrupt */
    /*  - Disable FIFO 1 Overrun Interrupt */
    /*  - Disable Transmit mailbox empty Interrupt */
    __HAL_CAN_DISABLE_IT(&hcan, CAN_IT_EWG |
                               CAN_IT_EPV |
                               CAN_IT_BOF |
                               CAN_IT_LEC |
                               CAN_IT_ERR |
                               CAN_IT_FMP0|
                               CAN_IT_FOV0|
                               CAN_IT_FMP1|
                               CAN_IT_FOV1|
                               CAN_IT_TME  );

    /* Call Error callback function */
    HAL_CAN_ErrorCallback(&hcan);
  }  
  /* USER CODE BEGIN CEC_CAN_IRQn 1 */

  /* USER CODE END CEC_CAN_IRQn 1 */
}

/* USER CODE BEGIN 1 */

/* USER CODE END 1 */
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
