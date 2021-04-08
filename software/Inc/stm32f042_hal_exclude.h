
#ifndef _STM32F042_HAL_EXCL_H 
	#define _STM32F042_HAL_EXCL_H 

	#include "stm32f0xx_hal.h"

	uint8_t 					CAN_Transmit(CAN_HandleTypeDef* hcan, CanTxMsgTypeDef* tx);
	HAL_StatusTypeDef CAN_Receive_IT(CAN_HandleTypeDef* hcan, uint8_t FIFONumber);
	HAL_StatusTypeDef CAN_Receive(CAN_HandleTypeDef* hcan, uint8_t FIFONumber, CanRxMsgTypeDef* RxMessage);
	HAL_StatusTypeDef ADC_Start_DMA(ADC_HandleTypeDef* hadc, uint32_t* pData, uint32_t Length);
#endif
