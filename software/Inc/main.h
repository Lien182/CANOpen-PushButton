/**
  ******************************************************************************
  * File Name          : main.h
  * Description        : This file contains the common defines of the application
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
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H
  /* Includes ------------------------------------------------------------------*/

/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private define ------------------------------------------------------------*/

#define Taster_1_Pin GPIO_PIN_0
#define Taster_1_GPIO_Port GPIOA
#define Taster_2_Pin GPIO_PIN_1
#define Taster_2_GPIO_Port GPIOA
#define Taster_3_Pin GPIO_PIN_2
#define Taster_3_GPIO_Port GPIOA
#define Taster_4_Pin GPIO_PIN_3
#define Taster_4_GPIO_Port GPIOA
#define Taster_5_Pin GPIO_PIN_4
#define Taster_5_GPIO_Port GPIOA
#define Taster_6_Pin GPIO_PIN_5
#define Taster_6_GPIO_Port GPIOA
#define ADC_TEMP__Pin GPIO_PIN_6
#define ADC_TEMP__GPIO_Port GPIOA
#define ADC_TEMP_A7_Pin GPIO_PIN_7
#define ADC_TEMP_A7_GPIO_Port GPIOA
#define LED_1_Pin GPIO_PIN_0
#define LED_1_GPIO_Port GPIOB
#define LED_2_Pin GPIO_PIN_1
#define LED_2_GPIO_Port GPIOB
#define LED_3_Pin GPIO_PIN_3
#define LED_3_GPIO_Port GPIOB
#define LED_4_Pin GPIO_PIN_4
#define LED_4_GPIO_Port GPIOB
#define LED_5_Pin GPIO_PIN_5
#define LED_5_GPIO_Port GPIOB
#define LED_6_Pin GPIO_PIN_6
#define LED_6_GPIO_Port GPIOB
#define LED_BL_Pin GPIO_PIN_7
#define LED_BL_GPIO_Port GPIOB
#define RUN_LED_Pin GPIO_PIN_8
#define RUN_LED_GPIO_Port GPIOB

#define DEBUG_1_Port		GPIOF
#define DEBUG_2_Port		GPIOF
#define DEBUG_1_Pin			GPIO_PIN_0
#define DEBUG_2_Pin			GPIO_PIN_1



/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

void _Error_Handler(char *, int);

#define Error_Handler() _Error_Handler(__FILE__, __LINE__)

/**
  * @}
  */ 

/**
  * @}
*/ 

#endif /* __MAIN_H */
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
