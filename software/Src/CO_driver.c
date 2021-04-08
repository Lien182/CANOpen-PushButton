/*
 * CAN module object for generic microcontroller.
 *
 * This file is a template for other microcontrollers.
 *
 * @file        CO_driver.c
 * @ingroup     CO_driver
 * @author      Janez Paternoster
 * @copyright   2004 - 2015 Janez Paternoster
 *
 * This file is part of CANopenNode, an opensource CANopen Stack.
 * Project home page is <https://github.com/CANopenNode/CANopenNode>.
 * For more information on CANopen see <http://www.can-cia.org/>.
 *
 * CANopenNode is free and open source software: you can redistribute
 * it and/or modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation, either version 2 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 *
 * Following clarification and special exception to the GNU General Public
 * License is included to the distribution terms of CANopenNode:
 *
 * Linking this library statically or dynamically with other modules is
 * making a combined work based on this library. Thus, the terms and
 * conditions of the GNU General Public License cover the whole combination.
 *
 * As a special exception, the copyright holders of this library give
 * you permission to link this library with independent modules to
 * produce an executable, regardless of the license terms of these
 * independent modules, and to copy and distribute the resulting
 * executable under terms of your choice, provided that you also meet,
 * for each linked independent module, the terms and conditions of the
 * license of that module. An independent module is a module which is
 * not derived from or based on this library. If you modify this
 * library, you may extend this exception to your version of the
 * library, but you are not obliged to do so. If you do not wish
 * to do so, delete this exception statement from your version.
 */

#include <stdlib.h>
#include <string.h>
#include "stm32f0xx_hal.h"
#include "CO_driver.h"
#include "../CANopenNode/stack/CO_Emergency.h"
#include "../Inc/stm32f042_hal_exclude.h" 


extern CAN_HandleTypeDef hcan;

CanRxMsgTypeDef rxmsg;
CanTxMsgTypeDef txmsg;


/******************************************************************************/
void CO_CANsetConfigurationMode(int32_t CANbaseAddress){
    
		
	/* Put CAN module in configuration mode */
		/* Enable CAN1 reset state */
    __HAL_RCC_CAN1_FORCE_RESET();
		__NOP();__NOP();__NOP();__NOP();__NOP();
    /* Release CAN1 from reset state */
		__HAL_RCC_CAN1_RELEASE_RESET();
}


/******************************************************************************/
void CO_CANsetNormalMode(CO_CANmodule_t *CANmodule){
    /* Put CAN module in normal mode */

    CANmodule->CANnormal = true;
}


/*****************    *************************************************************/
CO_ReturnError_t CO_CANmodule_init(
        CO_CANmodule_t         *CANmodule,
        uint32_t                CANbaseAddress,
        CO_CANrx_t              rxArray[],
        uint16_t                rxSize,
        CO_CANtx_t              txArray[],
        uint16_t                txSize,
        uint16_t                CANbitRate,
				uint8_t                 nodeId)
{
    uint16_t i;
    CAN_FilterConfTypeDef CAN_FilterInitStruct;
		uint8_t result;
	
    /* verify arguments */
    if(CANmodule==NULL || rxArray==NULL || txArray==NULL){
        return CO_ERROR_ILLEGAL_ARGUMENT;
    }

    /* Configure object variables */
    CANmodule->CANbaseAddress = CANbaseAddress;
    CANmodule->rxArray = rxArray;
    CANmodule->rxSize = rxSize;
    CANmodule->txArray = txArray;
    CANmodule->txSize = txSize;
    CANmodule->CANnormal = false;
    CANmodule->useCANrxFilters = (rxSize <= 32U) ? true : false;/* microcontroller dependent */
    CANmodule->bufferInhibitFlag = false;
    CANmodule->firstCANtxMessage = true;
    CANmodule->CANtxCount = 0U;
    CANmodule->errOld = 0U;
    CANmodule->em = NULL;

    for(i=0U; i<rxSize; i++){
        CANmodule->rxArray[i].ident = 0U;
        CANmodule->rxArray[i].pFunct = NULL;
    }
    for(i=0U; i<txSize; i++){
        CANmodule->txArray[i].bufferFull = false;
    }

		hcan.Instance = CAN;
			/* deinit CAN controller */
		HAL_CAN_DeInit(&hcan);
	
    switch (CANbitRate)
    {
        case 1000: hcan.Init.Prescaler = 8;
            break;
        case 500: hcan.Init.Prescaler =  16;
            break;
        default:
        case 250: hcan.Init.Prescaler = 32;
            break;
        case 125: hcan.Init.Prescaler = 64;
            break;
        case 100: hcan.Init.Prescaler = 30;
            break;
        case 50: hcan.Init.Prescaler = 160;
            break;
				case 25: hcan.Init.Prescaler = 320;
            break;
        case 20: hcan.Init.Prescaler = 400;
            break;
        case 10: hcan.Init.Prescaler = 800;
            break;
    }
		
    hcan.Init.SJW = CAN_SJW_1TQ;     // changed by CL, old value = CAN_SJW_1tq;
    hcan.Init.BS1 = CAN_BS1_13TQ;    // changed by CL, old value = CAN_BS1_3tq;
    hcan.Init.BS2 = CAN_BS2_2TQ;     // changed by CL, old value = CAN_BS2_2tq;
		
    //Added 10.11.2017
    hcan.Init.Mode = CAN_MODE_NORMAL;
    hcan.Init.TTCM = DISABLE;
    hcan.Init.ABOM = DISABLE;
    hcan.Init.AWUM = DISABLE;
    hcan.Init.NART = ENABLE;
    hcan.Init.RFLM = DISABLE;
    hcan.Init.TXFP = DISABLE;
            
    hcan.pTxMsg = &txmsg;
    hcan.pRxMsg = &rxmsg;

    result = HAL_CAN_Init(&hcan);
    if (result != 0)
        {
       return CO_ERROR_TIMEOUT;  /* CO- Return Init failed */
    }
  

    /*
		Filter configuration:
        
		CANOpen Messages:
        Function Code (e.g. TxPDO1, ...)    [10:07]
        Node ID                             [06:00]
    */
		
	//node dependend message filter
    memset(&CAN_FilterInitStruct, 0, sizeof (CAN_FilterInitStruct));
    CAN_FilterInitStruct.FilterNumber 		= 0;
    CAN_FilterInitStruct.FilterIdHigh 		= (uint32_t)nodeId << 5;
    CAN_FilterInitStruct.FilterIdLow 			= (uint32_t)nodeId << 5;
    CAN_FilterInitStruct.FilterMaskIdHigh = 0x0000007F << 5;    
		CAN_FilterInitStruct.FilterMaskIdLow  = 0x0000007F << 5; 		//don't care function code, care node id
    CAN_FilterInitStruct.FilterFIFOAssignment = CAN_FIFO0; // 
    CAN_FilterInitStruct.FilterMode = CAN_FILTERMODE_IDMASK;
    CAN_FilterInitStruct.FilterScale = CAN_FILTERSCALE_16BIT;
    CAN_FilterInitStruct.FilterActivation = ENABLE;
    HAL_CAN_ConfigFilter(&hcan, &CAN_FilterInitStruct);

    memset(&CAN_FilterInitStruct, 0, sizeof (CAN_FilterInitStruct));
    CAN_FilterInitStruct.FilterNumber 		= 1;
    CAN_FilterInitStruct.FilterIdHigh 		= 0x00000000;
    CAN_FilterInitStruct.FilterIdLow 			= 0x00000000;
    CAN_FilterInitStruct.FilterMaskIdHigh = 0x00000080 << 5;    
		CAN_FilterInitStruct.FilterMaskIdLow  = 0x00000000 << 5; 		//don't care function code, care node id
    CAN_FilterInitStruct.FilterFIFOAssignment = CAN_FIFO0; // 
    CAN_FilterInitStruct.FilterMode = CAN_FILTERMODE_IDLIST;
    CAN_FilterInitStruct.FilterScale = CAN_FILTERSCALE_16BIT;
    CAN_FilterInitStruct.FilterActivation = ENABLE;
    HAL_CAN_ConfigFilter(&hcan, &CAN_FilterInitStruct);



		__HAL_CAN_ENABLE_IT(&hcan,CAN_IT_TME | CAN_IT_FMP0);
		
    return CO_ERROR_NO;
}


static void CO_CANsendToModule(CO_CANmodule_t *CANmodule, CO_CANtx_t *buffer)
{
	//CL:
	CanTxMsgTypeDef tx;	
	tx.IDE = CAN_ID_STD;
	tx.DLC = buffer->DLC;
	for (int i = 0; i < 8; i++) tx.Data[i] = buffer->data[i];
	tx.StdId = ((buffer->ident) >> 21);
	tx.RTR = CAN_RTR_DATA;
	CAN_Transmit(&hcan,&tx);
	__HAL_CAN_ENABLE_IT(&hcan,CAN_IT_TME);

}

/******************************************************************************/
void CO_CANmodule_disable(CO_CANmodule_t *CANmodule){
    /* turn off the module */
	HAL_CAN_DeInit(&hcan);
}


/******************************************************************************/
uint16_t CO_CANrxMsg_readIdent(const CO_CANrxMsg_t *rxMsg){
    return (uint16_t) rxMsg->ident;
}


/******************************************************************************/
CO_ReturnError_t CO_CANrxBufferInit(
        CO_CANmodule_t         *CANmodule,
        uint16_t                index,
        uint16_t                ident,
        uint16_t                mask,
        bool_t                  rtr,
        void                   *object,
        void                  (*pFunct)(void *object, const CanRxMsgTypeDef *message))
{
	uint16_t RXF, RXM;
	
    CO_ReturnError_t ret = CO_ERROR_NO;

    if((CANmodule!=NULL) && (object!=NULL) && (pFunct!=NULL) && (index < CANmodule->rxSize)){
        /* buffer, which will be configured */
        CO_CANrx_t *buffer = &CANmodule->rxArray[index];

        /* Configure object variables */
        buffer->object = object;
        buffer->pFunct = pFunct;

		//CAN identifier and CAN mask, bit aligned with CAN module registers
		RXF = (ident & 0x07FF) << 2;
		if (rtr) RXF |= 0x02;
		RXM = (mask & 0x07FF) << 2;
		RXM |= 0x02;

		//configure filter and mask
		if (RXF != buffer->ident || RXM != buffer->mask)
        {
            buffer->ident = RXF;
            buffer->mask = RXM;
        }
    }
    else
    {
        ret = CO_ERROR_ILLEGAL_ARGUMENT;
    }

    return ret;
}


/******************************************************************************/
CO_CANtx_t *CO_CANtxBufferInit(
        CO_CANmodule_t         *CANmodule,
        uint16_t                index,
        uint16_t                ident,
        bool_t                  rtr,
        uint8_t                 noOfBytes,
        bool_t                  syncFlag)
{
	  uint32_t TXF;
    CO_CANtx_t *buffer = NULL;

    if((CANmodule != NULL) && (index < CANmodule->txSize)){
        //get specific buffer
        buffer = &CANmodule->txArray[index];

        //CAN identifier, bit aligned with CAN module registers

        TXF = ident << 21;
        TXF &= 0xFFE00000;
        if (rtr) TXF |= 0x02;

        //write to buffer
        buffer->ident = TXF;
        buffer->DLC = noOfBytes;
        buffer->bufferFull = 0;
        buffer->syncFlag = syncFlag ? 1 : 0;
    }

    return buffer;
}

/******************************************************************************/

int8_t getFreeTxBuff(CO_CANmodule_t *CANmodule)
{
    uint8_t txBuff = 0;
    for (txBuff = 0; txBuff <= 3; txBuff++)
        //if (CAN_TransmitStatus(CANmodule->CANbaseAddress, txBuff) == CAN_TxStatus_Ok)
        switch (txBuff)
        {
        case (CAN_TXMAILBOX_0 ):
            if (hcan.Instance->TSR & CAN_TSR_TME0 )
                return txBuff;
            else
                break;
        case (CAN_TXMAILBOX_1 ):
            if (hcan.Instance->TSR & CAN_TSR_TME1 )
                return txBuff;
            else
                break;
        case (CAN_TXMAILBOX_2 ):
            if (hcan.Instance->TSR & CAN_TSR_TME2 )
                return txBuff;
            else
                break;
        }
    return -1;
}



CO_ReturnError_t CO_CANsend(CO_CANmodule_t *CANmodule, CO_CANtx_t *buffer){
    CO_ReturnError_t err = CO_ERROR_NO;

    /* Verify overflow */
    if(buffer->bufferFull){
        if(!CANmodule->firstCANtxMessage){
            /* don't set error, if bootup message is still on buffers */
            CO_errorReport((CO_EM_t*)CANmodule->em, CO_EM_CAN_TX_OVERFLOW, CO_EMC_CAN_OVERRUN, buffer->ident);
        }
        err = CO_ERROR_TX_OVERFLOW;
    }

    CO_LOCK_CAN_SEND();
    /* if CAN TX buffer is free, copy message to it */
    if(1 && CANmodule->CANtxCount == 0){
        CANmodule->bufferInhibitFlag = buffer->syncFlag;
        /* copy message and txRequest */
				CO_CANsendToModule(CANmodule, buffer);
				
    }
    /* if no buffer is free, message will be sent by interrupt */
    else{
        buffer->bufferFull = true;
        CANmodule->CANtxCount++;
    }
    CO_UNLOCK_CAN_SEND();

    return err;
}


/******************************************************************************/
void CO_CANclearPendingSyncPDOs(CO_CANmodule_t *CANmodule){
    uint32_t tpdoDeleted = 0U;

    CO_LOCK_CAN_SEND();
    /* Abort message from CAN module, if there is synchronous TPDO.
     * Take special care with this functionality. */
    if(/*messageIsOnCanBuffer && */CANmodule->bufferInhibitFlag){
        /* clear TXREQ */
        CANmodule->bufferInhibitFlag = false;
        tpdoDeleted = 1U;
    }
    /* delete also pending synchronous TPDOs in TX buffers */
    if(CANmodule->CANtxCount != 0U){
        uint16_t i;
        CO_CANtx_t *buffer = &CANmodule->txArray[0];
        for(i = CANmodule->txSize; i > 0U; i--){
            if(buffer->bufferFull){
                if(buffer->syncFlag){
                    buffer->bufferFull = false;
                    CANmodule->CANtxCount--;
                    tpdoDeleted = 2U;
                }
            }
            buffer++;
        }
    }
    CO_UNLOCK_CAN_SEND();


    if(tpdoDeleted != 0U){
        CO_errorReport((CO_EM_t*)CANmodule->em, CO_EM_TPDO_OUTSIDE_WINDOW, CO_EMC_COMMUNICATION, tpdoDeleted);
    }
}


/******************************************************************************/
//void CO_CANverifyErrors(CO_CANmodule_t *CANmodule){
//	
//    uint16_t rxErrors, txErrors, overflow;
//    CO_EM_t* em = (CO_EM_t*)CANmodule->em;
//    uint32_t err;

//    // get error counters from module. Id possible, function may use different way to
//    // determine errors. 
//    rxErrors = CANmodule->txSize;
//    txErrors = CANmodule->txSize;
//    overflow = CANmodule->txSize;

//    err = ((uint32_t)txErrors << 16) | ((uint32_t)rxErrors << 8) | overflow;

//    if(CANmodule->errOld != err){
//        CANmodule->errOld = err;

//        if(txErrors >= 256U){                               // bus off 
//            CO_errorReport(em, CO_EM_CAN_TX_BUS_OFF, CO_EMC_BUS_OFF_RECOVERED, err);
//        }
//        else{                                               // not bus off 
//            CO_errorReset(em, CO_EM_CAN_TX_BUS_OFF, err);

//            if((rxErrors >= 96U) || (txErrors >= 96U)){     // bus warning 
//                CO_errorReport(em, CO_EM_CAN_BUS_WARNING, CO_EMC_NO_ERROR, err);
//            }

//            if(rxErrors >= 128U){                           // RX bus passive 
//                CO_errorReport(em, CO_EM_CAN_RX_BUS_PASSIVE, CO_EMC_CAN_PASSIVE, err);
//            }
//            else{
//                CO_errorReset(em, CO_EM_CAN_RX_BUS_PASSIVE, err);
//            }

//            if(txErrors >= 128U){                           // TX bus passive 
//                if(!CANmodule->firstCANtxMessage){
//                    CO_errorReport(em, CO_EM_CAN_TX_BUS_PASSIVE, CO_EMC_CAN_PASSIVE, err);
//                }
//            }
//            else{
//                bool_t isError = CO_isError(em, CO_EM_CAN_TX_BUS_PASSIVE);
//                if(isError){
//                    CO_errorReset(em, CO_EM_CAN_TX_BUS_PASSIVE, err);
//                    CO_errorReset(em, CO_EM_CAN_TX_OVERFLOW, err);
//                }
//            }

//            if((rxErrors < 96U) && (txErrors < 96U)){       // no error //
//                CO_errorReset(em, CO_EM_CAN_BUS_WARNING, err);
//            }
//        }

//        if(overflow != 0U){                                 // CAN RX bus overflow 
//            CO_errorReport(em, CO_EM_CAN_RXB_OVERFLOW, CO_EMC_CAN_OVERRUN, err);
//        }
//    }
//		
//		
////	 uint32_t err;
//  // CO_EM_t* em = (CO_EM_t*)CANmodule->em;

//	
//   err = hcan.Instance->ESR;
//   // if(CAN_REG(CANmodule->CANbaseAddress, C_INTF) & 4) err |= 0x80;

//   if(CANmodule->errOld != err)
//   {
//      CANmodule->errOld = err;

//      //CAN RX bus overflow
//      if(hcan.Instance->RF0R & 0x08)
//      {
//         CO_errorReport(em, CO_EM_CAN_RXB_OVERFLOW, CO_EMC_CAN_OVERRUN, err);
//         hcan.Instance->RF0R &=~0x08;//clear bits
//      }

//      //CAN TX bus off
//      if(err & 0x04) CO_errorReport(em, CO_EM_CAN_TX_BUS_OFF, CO_EMC_BUS_OFF_RECOVERED, err);
//      else           CO_errorReset(em, CO_EM_CAN_TX_BUS_OFF, err);

//      //CAN TX or RX bus passive
//      if(err & 0x02)
//      {
//         if(!CANmodule->firstCANtxMessage) CO_errorReport(em, CO_EM_CAN_TX_BUS_PASSIVE, CO_EMC_CAN_PASSIVE, err);
//      }
//      else
//      {
//        // int16_t wasCleared;
//        /* wasCleared = */CO_errorReset(em, CO_EM_CAN_TX_BUS_PASSIVE, err);
//        /* if(wasCleared == 1) */CO_errorReset(em, CO_EM_CAN_TX_OVERFLOW, err);
//      }


//      //CAN TX or RX bus warning
//      if(err & 0x01)
//      {
//         CO_errorReport(em, CO_EM_CAN_BUS_WARNING, CO_EMC_NO_ERROR, err);
//      }
//      else
//      {
//         CO_errorReset(em, CO_EM_CAN_BUS_WARNING, err);
//      }
//		}
//}


void CO_CANverifyErrors(CO_CANmodule_t *CANmodule){
	
	 uint32_t err;
   CO_EM_t* em = (CO_EM_t*)CANmodule->em;

	
   err = hcan.Instance->ESR;
  
   if(CANmodule->errOld != err)
   {
      CANmodule->errOld = err;

      //CAN RX bus overflow
      if(hcan.Instance->RF0R & 0x08)
      {
         CO_errorReport(em, CO_EM_CAN_RXB_OVERFLOW, CO_EMC_CAN_OVERRUN, err);
         hcan.Instance->RF0R &=~0x08;//clear bits
      }

      //CAN TX bus off
      if(err & 0x04) CO_errorReport(em, CO_EM_CAN_TX_BUS_OFF, CO_EMC_BUS_OFF_RECOVERED, err);
      else           CO_errorReset(em, CO_EM_CAN_TX_BUS_OFF, err);

      //CAN TX or RX bus passive
      if(err & 0x02)
      {
         if(!CANmodule->firstCANtxMessage) CO_errorReport(em, CO_EM_CAN_TX_BUS_PASSIVE, CO_EMC_CAN_PASSIVE, err);
      }
      else
      {
        // int16_t wasCleared;
        /* wasCleared = */CO_errorReset(em, CO_EM_CAN_TX_BUS_PASSIVE, err);
        /* if(wasCleared == 1) */CO_errorReset(em, CO_EM_CAN_TX_OVERFLOW, err);
      }


      //CAN TX or RX bus warning
      if(err & 0x01)
      {
         CO_errorReport(em, CO_EM_CAN_BUS_WARNING, CO_EMC_NO_ERROR, err);
      }
      else
      {
         CO_errorReset(em, CO_EM_CAN_BUS_WARNING, err);
      }
		}
}

/******************************************************************************/
uint32_t CO_CANinterrupt(CO_CANmodule_t *CANmodule){

	DEBUG_1_Port->BSRR = (uint32_t)DEBUG_2_Pin;

	
  /* receive interrupt */
  if  /* Check End of reception flag for FIFO0 */
	((__HAL_CAN_GET_IT_SOURCE(&hcan, CAN_IT_FMP0)) &&
  (__HAL_CAN_MSG_PENDING(&hcan, CAN_FIFO0) != 0U)) 
  {
		uint16_t index;             /* index of received message */
        bool_t msgMatched = false;

		//get and copy data
		CanRxMsgTypeDef rx;
		CAN_Receive(&hcan, CAN_FIFO0, &rx);


		CO_CANrx_t *msgBuff = CANmodule->rxArray;
        
        uint16_t msg = (rx.StdId << 2) | (rx.RTR ? 2 : 0);

		for (index = 0; index < CANmodule->rxSize; index++)
		{
					if (((msg ^ msgBuff->ident) & msgBuff->mask) == 0)
					{
							msgMatched = 1;
							break;
					}
					msgBuff++;
		}
			

        /* Call specific function, which will process the message */
	    if (msgMatched && msgBuff->pFunct)
            msgBuff->pFunct(msgBuff->object, &rx);
 
			DEBUG_1_Port->BRR = (uint32_t)DEBUG_2_Pin;
			return 1;
   }
   /* transmit interrupt */
    else if(__HAL_CAN_GET_IT_SOURCE(&hcan, CAN_IT_TME)){
        /* Clear interrupt flag */
				__HAL_CAN_DISABLE_IT(&hcan, CAN_IT_TME);
			
        /* First CAN message (bootup) was sent successfully */
        CANmodule->firstCANtxMessage = false;
        /* clear flag from previous message */
        CANmodule->bufferInhibitFlag = false;
        /* Are there any new messages waiting to be send */
        if(CANmodule->CANtxCount > 0U){
            uint16_t i;             /* index of transmitting message */

            /* first buffer */
            CO_CANtx_t *buffer = &CANmodule->txArray[0];
            /* search through whole array of pointers to transmit message buffers. */
            for(i = CANmodule->txSize; i > 0U; i--){
                /* if message buffer is full, send it. */
                if(buffer->bufferFull){
                    buffer->bufferFull = false;
                    CANmodule->CANtxCount--;
                    /* Copy message to CAN buffer */
                    CANmodule->bufferInhibitFlag = buffer->syncFlag;
                    /* canSend... */
										CO_CANsendToModule(CANmodule, buffer);
                    break;                      /* exit for loop */
                }
                buffer++;
            }/* end of for loop */

            /* Clear counter if no more messages */
            if(i == 0U){
                CANmodule->CANtxCount = 0U;
            }
        }
				DEBUG_1_Port->BRR = (uint32_t)DEBUG_2_Pin;
				return 1;
    }
    else{
			 DEBUG_1_Port->BRR = (uint32_t)DEBUG_2_Pin;
       return 0;
    }
		
		
}
