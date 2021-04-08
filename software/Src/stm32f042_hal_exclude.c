#include "../Inc/stm32f042_hal_exclude.h"


uint8_t CAN_Transmit(CAN_HandleTypeDef* hcan, CanTxMsgTypeDef* TxMessage)
{
 uint8_t transmit_mailbox = 0;
 
  /* Select one empty transmit mailbox */
  if ((hcan->Instance->TSR&CAN_TSR_TME0) == CAN_TSR_TME0)
  {
    transmit_mailbox = 0;
  }
  else if ((hcan->Instance->TSR&CAN_TSR_TME1) == CAN_TSR_TME1)
  {
    transmit_mailbox = 1;
  }
  else if ((hcan->Instance->TSR&CAN_TSR_TME2) == CAN_TSR_TME2)
  {
    transmit_mailbox = 2;
  }
  else
  {
    transmit_mailbox = CAN_TXSTATUS_NOMAILBOX;
  }

  if (transmit_mailbox != CAN_TXSTATUS_NOMAILBOX)
  {
    /* Set up the Id */
    hcan->Instance->sTxMailBox[transmit_mailbox].TIR &= CAN_TI0R_TXRQ;
    if (TxMessage->IDE == CAN_ID_STD)
    {
      assert_param(IS_CAN_STDID(TxMessage->StdId));  
      hcan->Instance->sTxMailBox[transmit_mailbox].TIR |= ((TxMessage->StdId << 21) | \
                                                  TxMessage->RTR);
    }
    else
    {
      assert_param(IS_CAN_EXTID(TxMessage->ExtId));
      hcan->Instance->sTxMailBox[transmit_mailbox].TIR |= ((TxMessage->ExtId << 3) | \
                                                  TxMessage->IDE | \
                                                  TxMessage->RTR);
    }
    
    /* Set up the DLC */
    TxMessage->DLC &= (uint8_t)0x0000000F;
    hcan->Instance->sTxMailBox[transmit_mailbox].TDTR &= (uint32_t)0xFFFFFFF0;
    hcan->Instance->sTxMailBox[transmit_mailbox].TDTR |= TxMessage->DLC;

    /* Set up the data field */
    hcan->Instance->sTxMailBox[transmit_mailbox].TDLR = (((uint32_t)TxMessage->Data[3] << 24) | 
                                             ((uint32_t)TxMessage->Data[2] << 16) |
                                             ((uint32_t)TxMessage->Data[1] << 8) | 
                                             ((uint32_t)TxMessage->Data[0]));
    hcan->Instance->sTxMailBox[transmit_mailbox].TDHR = (((uint32_t)TxMessage->Data[7] << 24) | 
                                             ((uint32_t)TxMessage->Data[6] << 16) |
                                             ((uint32_t)TxMessage->Data[5] << 8) |
                                             ((uint32_t)TxMessage->Data[4]));
    /* Request transmission */
    hcan->Instance->sTxMailBox[transmit_mailbox].TIR |= CAN_TI0R_TXRQ;
  }
  return transmit_mailbox;
}


HAL_StatusTypeDef CAN_Receive(CAN_HandleTypeDef* hcan, uint8_t FIFONumber, CanRxMsgTypeDef* RxMessage)
{
  /* Check the parameters */
  assert_param(IS_CAN_ALL_PERIPH(CANx));
  assert_param(IS_CAN_FIFO(FIFONumber));
  /* Get the Id */
  RxMessage->IDE = (uint8_t)0x04 & hcan->Instance->sFIFOMailBox[FIFONumber].RIR;
  if (RxMessage->IDE == 0x00000000)
  {
    RxMessage->StdId = (uint32_t)0x000007FF & (hcan->Instance->sFIFOMailBox[FIFONumber].RIR >> 21);
  }
  else
  {
    RxMessage->ExtId = (uint32_t)0x1FFFFFFF & (hcan->Instance->sFIFOMailBox[FIFONumber].RIR >> 3);
  }
  
  RxMessage->RTR = (uint8_t)0x02 & hcan->Instance->sFIFOMailBox[FIFONumber].RIR;
  /* Get the DLC */
  RxMessage->DLC = (uint8_t)0x0F & hcan->Instance->sFIFOMailBox[FIFONumber].RDTR;
  /* Get the FMI */
  RxMessage->FMI = (uint8_t)0xFF & (hcan->Instance->sFIFOMailBox[FIFONumber].RDTR >> 8);
  /* Get the data field */
  RxMessage->Data[0] = (uint8_t)0xFF &  hcan->Instance->sFIFOMailBox[FIFONumber].RDLR;
  RxMessage->Data[1] = (uint8_t)0xFF & (hcan->Instance->sFIFOMailBox[FIFONumber].RDLR >> 8);
  RxMessage->Data[2] = (uint8_t)0xFF & (hcan->Instance->sFIFOMailBox[FIFONumber].RDLR >> 16);
  RxMessage->Data[3] = (uint8_t)0xFF & (hcan->Instance->sFIFOMailBox[FIFONumber].RDLR >> 24);
  RxMessage->Data[4] = (uint8_t)0xFF &  hcan->Instance->sFIFOMailBox[FIFONumber].RDHR;
  RxMessage->Data[5] = (uint8_t)0xFF & (hcan->Instance->sFIFOMailBox[FIFONumber].RDHR >> 8);
  RxMessage->Data[6] = (uint8_t)0xFF & (hcan->Instance->sFIFOMailBox[FIFONumber].RDHR >> 16);
  RxMessage->Data[7] = (uint8_t)0xFF & (hcan->Instance->sFIFOMailBox[FIFONumber].RDHR >> 24);
  /* Release the FIFO */
  /* Release FIFO0 */
  if (FIFONumber == CAN_FIFO0)
  {
    hcan->Instance->RF0R |= CAN_RF0R_RFOM0;
  }
  /* Release FIFO1 */
  else /* FIFONumber == CAN_FIFO1 */
  {
    hcan->Instance->RF1R |= CAN_RF1R_RFOM1;
  }
	
	return HAL_OK;
}





HAL_StatusTypeDef CAN_Receive_IT(CAN_HandleTypeDef* hcan, uint8_t FIFONumber)
{

  CanRxMsgTypeDef* pRxMsg = NULL;

  /* Set RxMsg pointer */
  if(FIFONumber == CAN_FIFO0)
  {
    pRxMsg = hcan->pRxMsg;
  }
  else /* FIFONumber == CAN_FIFO1 */
  {
    pRxMsg = hcan->pRx1Msg;
  }

  /* Get the Id */
  pRxMsg->IDE = CAN_RI0R_IDE & hcan->Instance->sFIFOMailBox[FIFONumber].RIR;
  if (pRxMsg->IDE == CAN_ID_STD)
  {
    pRxMsg->StdId = (CAN_RI0R_STID & hcan->Instance->sFIFOMailBox[FIFONumber].RIR) >> CAN_TI0R_STID_Pos;
  }
  else
  {
    pRxMsg->ExtId = (0xFFFFFFF8U & hcan->Instance->sFIFOMailBox[FIFONumber].RIR) >> CAN_RI0R_EXID_Pos;
  }
  pRxMsg->RTR = (CAN_RI0R_RTR & hcan->Instance->sFIFOMailBox[FIFONumber].RIR) >> CAN_RI0R_RTR_Pos;
  /* Get the DLC */
  pRxMsg->DLC = (CAN_RDT0R_DLC & hcan->Instance->sFIFOMailBox[FIFONumber].RDTR) >> CAN_RDT0R_DLC_Pos;
  /* Get the FMI */
  pRxMsg->FMI = (CAN_RDT0R_FMI & hcan->Instance->sFIFOMailBox[FIFONumber].RDTR) >> CAN_RDT0R_FMI_Pos;
  /* Get the FIFONumber */
  pRxMsg->FIFONumber = FIFONumber;
  /* Get the data field */
  pRxMsg->Data[0] = (CAN_RDL0R_DATA0 & hcan->Instance->sFIFOMailBox[FIFONumber].RDLR) >> CAN_RDL0R_DATA0_Pos;
  pRxMsg->Data[1] = (CAN_RDL0R_DATA1 & hcan->Instance->sFIFOMailBox[FIFONumber].RDLR) >> CAN_RDL0R_DATA1_Pos;
  pRxMsg->Data[2] = (CAN_RDL0R_DATA2 & hcan->Instance->sFIFOMailBox[FIFONumber].RDLR) >> CAN_RDL0R_DATA2_Pos;
  pRxMsg->Data[3] = (CAN_RDL0R_DATA3 & hcan->Instance->sFIFOMailBox[FIFONumber].RDLR) >> CAN_RDL0R_DATA3_Pos;
  pRxMsg->Data[4] = (CAN_RDH0R_DATA4 & hcan->Instance->sFIFOMailBox[FIFONumber].RDHR) >> CAN_RDH0R_DATA4_Pos;
  pRxMsg->Data[5] = (CAN_RDH0R_DATA5 & hcan->Instance->sFIFOMailBox[FIFONumber].RDHR) >> CAN_RDH0R_DATA5_Pos;
  pRxMsg->Data[6] = (CAN_RDH0R_DATA6 & hcan->Instance->sFIFOMailBox[FIFONumber].RDHR) >> CAN_RDH0R_DATA6_Pos;
  pRxMsg->Data[7] = (CAN_RDH0R_DATA7 & hcan->Instance->sFIFOMailBox[FIFONumber].RDHR) >> CAN_RDH0R_DATA7_Pos;

  /* Release the FIFO */
  /* Release FIFO0 */
  if (FIFONumber == CAN_FIFO0)
  {
    __HAL_CAN_FIFO_RELEASE(hcan, CAN_FIFO0);
    
    /* Disable FIFO 0 overrun and message pending Interrupt */
    __HAL_CAN_DISABLE_IT(hcan, CAN_IT_FOV0 | CAN_IT_FMP0);
  }
  /* Release FIFO1 */
  else /* FIFONumber == CAN_FIFO1 */
  {
    __HAL_CAN_FIFO_RELEASE(hcan, CAN_FIFO1);
    
    /* Disable FIFO 1 overrun and message pending Interrupt */
    __HAL_CAN_DISABLE_IT(hcan, CAN_IT_FOV1 | CAN_IT_FMP1);
  }
  
  if((hcan->State == HAL_CAN_STATE_BUSY_RX0) || (hcan->State == HAL_CAN_STATE_BUSY_RX1))
  {   
    /* Disable interrupts: */
    /*  - Disable Error warning Interrupt */
    /*  - Disable Error passive Interrupt */
    /*  - Disable Bus-off Interrupt */
    /*  - Disable Last error code Interrupt */
    /*  - Disable Error Interrupt */
    __HAL_CAN_DISABLE_IT(hcan, CAN_IT_EWG |
                               CAN_IT_EPV |
                               CAN_IT_BOF |
                               CAN_IT_LEC |
                               CAN_IT_ERR );
  }

  /* Change CAN state */
  if (FIFONumber == CAN_FIFO0)
  {
    switch(hcan->State)
    {
      case(HAL_CAN_STATE_BUSY_TX_RX0):
        hcan->State = HAL_CAN_STATE_BUSY_TX;
        break;
      case(HAL_CAN_STATE_BUSY_RX0_RX1):
        hcan->State = HAL_CAN_STATE_BUSY_RX1;
        break;
      case(HAL_CAN_STATE_BUSY_TX_RX0_RX1):
        hcan->State = HAL_CAN_STATE_BUSY_TX_RX1;
        break;
      default: /* HAL_CAN_STATE_BUSY_RX0 */
        hcan->State = HAL_CAN_STATE_READY;
        break;
    }
  }
  else /* FIFONumber == CAN_FIFO1 */
  {
    switch(hcan->State)
    {
      case(HAL_CAN_STATE_BUSY_TX_RX1):
        hcan->State = HAL_CAN_STATE_BUSY_TX;
        break;
      case(HAL_CAN_STATE_BUSY_RX0_RX1):
        hcan->State = HAL_CAN_STATE_BUSY_RX0;
        break;
      case(HAL_CAN_STATE_BUSY_TX_RX0_RX1):
        hcan->State = HAL_CAN_STATE_BUSY_TX_RX0;
        break;
      default: /* HAL_CAN_STATE_BUSY_RX1 */
        hcan->State = HAL_CAN_STATE_READY;
        break;
    }
  }

  
  /* Return function status */
  return HAL_OK;
}

HAL_StatusTypeDef ADC_Enable(ADC_HandleTypeDef* hadc)
{
  uint32_t tickstart = 0U;
  __IO uint32_t wait_loop_index = 0U;
  
  /* ADC enable and wait for ADC ready (in case of ADC is disabled or         */
  /* enabling phase not yet completed: flag ADC ready not yet set).           */
  /* Timeout implemented to not be stuck if ADC cannot be enabled (possible   */
  /* causes: ADC clock not running, ...).                                     */
  if (ADC_IS_ENABLE(hadc) == RESET)
  {
    /* Check if conditions to enable the ADC are fulfilled */
    if (ADC_ENABLING_CONDITIONS(hadc) == RESET)
    {
      /* Update ADC state machine to error */
      SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_INTERNAL);
    
      /* Set ADC error code to ADC IP internal error */
      SET_BIT(hadc->ErrorCode, HAL_ADC_ERROR_INTERNAL);
      
      return HAL_ERROR;
    }
    
    /* Enable the ADC peripheral */
    __HAL_ADC_ENABLE(hadc);
    
    /* Delay for ADC stabilization time */
    /* Compute number of CPU cycles to wait for */
    wait_loop_index = (1U * (SystemCoreClock / 1000000U));
    while(wait_loop_index != 0U)
    {
      wait_loop_index--;
    }

    /* Get tick count */
    tickstart = HAL_GetTick();
    
    /* Wait for ADC effectively enabled */
    while(__HAL_ADC_GET_FLAG(hadc, ADC_FLAG_RDY) == RESET)
    {
      if((HAL_GetTick() - tickstart) > 2U)
      {
        /* Update ADC state machine to error */
        SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_INTERNAL);
      
        /* Set ADC error code to ADC IP internal error */
        SET_BIT(hadc->ErrorCode, HAL_ADC_ERROR_INTERNAL);
      
        return HAL_ERROR;
      }
    }   
    
  }
   
  /* Return HAL status */
  return HAL_OK;
}


/**
  * @brief  Enables ADC, starts conversion of regular group and transfers result
  *         through DMA.
  *         Interruptions enabled in this function:
  *          - DMA transfer complete
  *          - DMA half transfer
  *          - overrun
  *         Each of these interruptions has its dedicated callback function.
  * @param  hadc: ADC handle
  * @param  pData: The destination Buffer address.
  * @param  Length: The length of data to be transferred from ADC peripheral to memory.
  * @retval None
  */
HAL_StatusTypeDef ADC_Start_DMA(ADC_HandleTypeDef* hadc, uint32_t* pData, uint32_t Length)
{
  HAL_StatusTypeDef tmp_hal_status = HAL_OK;

  /* Perform ADC enable and conversion start if no conversion is on going */
  if (ADC_IS_CONVERSION_ONGOING_REGULAR(hadc) == RESET)
  {
    /* Process locked */
    __HAL_LOCK(hadc);
    tmp_hal_status = ADC_Enable(hadc);
    
    /* Start conversion if ADC is effectively enabled */
    if (tmp_hal_status == HAL_OK)
    {
      /* Set ADC state                                                        */
      /* - Clear state bitfield related to regular group conversion results   */
      /* - Set state bitfield related to regular operation                    */
      ADC_STATE_CLR_SET(hadc->State,
                        HAL_ADC_STATE_READY | HAL_ADC_STATE_REG_EOC | HAL_ADC_STATE_REG_OVR | HAL_ADC_STATE_REG_EOSMP,
                        HAL_ADC_STATE_REG_BUSY);
      
      /* Reset ADC all error code fields */
      ADC_CLEAR_ERRORCODE(hadc);
      
      /* Process unlocked */
      /* Unlock before starting ADC conversions: in case of potential         */
      /* interruption, to let the process to ADC IRQ Handler.                 */
      __HAL_UNLOCK(hadc);


      
      /* Manage ADC and DMA start: ADC overrun interruption, DMA start, ADC   */
      /* start (in case of SW start):                                         */
      
      /* Clear regular group conversion flag and overrun flag */
      /* (To ensure of no unknown state from potential previous ADC           */
      /* operations)                                                          */
      __HAL_ADC_CLEAR_FLAG(hadc, (ADC_FLAG_EOC | ADC_FLAG_EOS | ADC_FLAG_OVR));
      
      /* Enable ADC overrun interrupt */
      __HAL_ADC_ENABLE_IT(hadc, ADC_IT_OVR);
      
      /* Enable ADC DMA mode */
      hadc->Instance->CFGR1 |= ADC_CFGR1_DMAEN;
      
      /* Start the DMA channel */
      HAL_DMA_Start_IT(hadc->DMA_Handle, (uint32_t)&hadc->Instance->DR, (uint32_t)pData, Length);
           
      /* Enable conversion of regular group.                                  */
      /* If software start has been selected, conversion starts immediately.  */
      /* If external trigger has been selected, conversion will start at next */
      /* trigger event.                                                       */
      hadc->Instance->CR |= ADC_CR_ADSTART;
    }
  }
  else
  {
    tmp_hal_status = HAL_BUSY;
  }
    
  /* Return function status */
  return tmp_hal_status;
}
