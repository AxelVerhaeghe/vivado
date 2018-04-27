/**
  ******************************************************************************
  * @file    main.c
  * @author  Ac6
  * @version V1.0
  * @date    01-December-2013
  * @brief   Default main function.
  ******************************************************************************
*/


#include <stdio.h>

#include "stm32f30x.h"
#include "stm32f3xx_nucleo.h"

#include "uart.h"


#define DEFALT_FREQ 50000.0f
#define DEFAULT_DUTY 0.15f

void hrtimInit(void);
void hrtimSetFreqDuty(float freq, float duty);


int main(void)
{

	uartInit(115200);

	adcInit();

	hrtimInit();
	hrtimSetFreqDuty(50e3f, 0.1f);

	printf("Starting WPT\r\n");

	for(;;){
		volatile int  n = 100000;
		while(n--);
		printf("ADC: %4i %4i \r\n", ADC_GetInjectedConversionValue(ADC1,1), ADC_GetInjectedConversionValue(ADC1,2));
	}
}


void HRTIM1_Master_IRQHandler(void){

	// Om de 10 PWM periodes word dit opgeroepen

	HRTIM_ClearITPendingBit(HRTIM1,HRTIM_TIMERINDEX_MASTER, HRTIM_MASTER_IT_MREP);

	int16_t adc_0 = ADC_GetInjectedConversionValue(ADC1,1);
	int16_t adc_90 = ADC_GetInjectedConversionValue(ADC1,2);

	hrtimSetFreqDuty(50e3f, 0.1f);

}


void adcInit(void){

	// ADC
	// 12 BIT
	// INJECTED CHANNEL op ADCTRIG2


	ADC_InitTypeDef       ADC_InitStructure;
	ADC_CommonInitTypeDef ADC_CommonInitStructure;
	GPIO_InitTypeDef      GPIO_InitStructure;

	// Enable clocks
	RCC_ADCCLKConfig(RCC_ADC12PLLCLK_Div1);
	RCC_AHBPeriphClockCmd(RCC_AHBPeriph_ADC12, ENABLE);
	RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOA, ENABLE);

	// Configure PA0 & PA1 (ADC2 Channel1) as analog input
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0 | GPIO_Pin_1;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AN;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL ;
	GPIO_Init(GPIOA, &GPIO_InitStructure);

	// Calibration procedure
	ADC_VoltageRegulatorCmd(ADC1, ENABLE);
	ADC_SelectCalibrationMode(ADC1, ADC_CalibrationMode_Differential);
	ADC_StartCalibration(ADC1);
	while(ADC_GetCalibrationStatus(ADC1) != RESET );


	// Configuratie
	ADC_CommonInitStructure.ADC_Mode = ADC_Mode_Independent;
	ADC_CommonInitStructure.ADC_Clock = ADC_Clock_AsynClkMode;
	ADC_CommonInitStructure.ADC_DMAAccessMode = ADC_DMAAccessMode_Disabled;
	ADC_CommonInitStructure.ADC_DMAMode = ADC_DMAMode_OneShot;
	ADC_CommonInitStructure.ADC_TwoSamplingDelay = 0;
	ADC_CommonInit(ADC1, &ADC_CommonInitStructure);

	ADC_InitStructure.ADC_ContinuousConvMode = ADC_ContinuousConvMode_Disable;
	ADC_InitStructure.ADC_Resolution = ADC_Resolution_12b;
	ADC_InitStructure.ADC_ExternalTrigConvEvent = ADC_ExternalTrigConvEvent_0;
	ADC_InitStructure.ADC_ExternalTrigEventEdge = ADC_ExternalTrigEventEdge_None;
	ADC_InitStructure.ADC_DataAlign = ADC_DataAlign_Right;
	ADC_InitStructure.ADC_OverrunMode = ADC_OverrunMode_Disable;
	ADC_InitStructure.ADC_AutoInjMode = ADC_AutoInjec_Disable;
	ADC_InitStructure.ADC_NbrOfRegChannel = 1;
	ADC_Init(ADC1, &ADC_InitStructure);

	ADC_InjectedInitTypeDef ADC_InjectedInitStruct;
	ADC_InjectedInitStruct.ADC_ExternalTrigInjecConvEvent = ADC_ExternalTrigInjecConvEvent_9;
	ADC_InjectedInitStruct.ADC_ExternalTrigInjecEventEdge = ADC_ExternalTrigInjecEventEdge_RisingEdge;
	ADC_InjectedInitStruct.ADC_InjecSequence1 = ADC_InjectedChannel_1; // PA0-PA1 bij 0°
	ADC_InjectedInitStruct.ADC_InjecSequence2 = ADC_InjectedChannel_1; // PA0-PA1 bij 90°
	ADC_InjectedInitStruct.ADC_NbrOfInjecChannel = 2;
	ADC_InjectedInit(ADC1, &ADC_InjectedInitStruct);

	ADC_InjectedDiscModeCmd(ADC1, ENABLE);

	ADC_InjectedChannelSampleTimeConfig(ADC1, ADC_Channel_1, ADC_SampleTime_7Cycles5);
	ADC_InjectedChannelSampleTimeConfig(ADC1, ADC_Channel_2, ADC_SampleTime_7Cycles5);
	ADC_SelectDifferentialMode(ADC1, ADC_Channel_1, ENABLE);

	/* Enable ADC2 */
	ADC_Cmd(ADC1, ENABLE);

	/* wait for ADRDY */
	while(!ADC_GetFlagStatus(ADC1, ADC_FLAG_RDY));

	/* Start ADC2 Injected Conversions */
	ADC_StartInjectedConversion(ADC1);

}

void hrtimInit(void){
	RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOA, ENABLE);

	// Configureer pinnen
	// PA8 and PA9
	GPIO_InitTypeDef GpioInitStruct;
	GpioInitStruct.GPIO_PuPd = GPIO_PuPd_NOPULL;
	GpioInitStruct.GPIO_Speed = GPIO_Speed_50MHz;
	GpioInitStruct.GPIO_Mode = GPIO_Mode_AF;
	GpioInitStruct.GPIO_OType = GPIO_OType_PP;

	GpioInitStruct.GPIO_Pin = GPIO_Pin_8;
	GPIO_Init(GPIOA, &GpioInitStruct);
	GPIO_PinAFConfig(GPIOA, GPIO_PinSource8, GPIO_AF_13); // Alternate function configuration : HRTIM TA1 (PA8)

	GpioInitStruct.GPIO_Pin = GPIO_Pin_9;
	GPIO_Init(GPIOA, &GpioInitStruct);
	GPIO_PinAFConfig(GPIOA, GPIO_PinSource9, GPIO_AF_13); // Alternate function configuration : HRTIM TA2 (PA9)

	int PWM_PERIOD = 2.0f*72000000.0f*8.0f/DEFALT_FREQ;
	int PULSE_PERIOD = DEFAULT_DUTY*PWM_PERIOD;

	//create setup structures
	HRTIM_OutputCfgTypeDef HRTIM_TIM_OutputStructure;
	HRTIM_BaseInitTypeDef HRTIM_BaseInitStructure;
	HRTIM_TimerInitTypeDef HRTIM_TimerInitStructure;
	HRTIM_TimerCfgTypeDef HRTIM_TimerWaveStructure;

	// Clock configuratie
	RCC_HRTIM1CLKConfig(RCC_HRTIM1CLK_PLLCLK); // 72M x 2
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_HRTIM1, ENABLE);

	// HRTIM DLL calibration: periodic calibration
	HRTIM_DLLCalibrationStart(HRTIM1, HRTIM_CALIBRATIONRATE_14);
	HRTIM1_COMMON->DLLCR |= HRTIM_DLLCR_CALEN;

	// Wait calibration completion
	while(HRTIM_GetCommonFlagStatus(HRTIM1, HRTIM_ISR_DLLRDY) == RESET);

	// Configure HRTIM MASTER TIMER for period and sync
	HRTIM_TimerInitStructure.HalfModeEnable = HRTIM_HALFMODE_DISABLED;
	HRTIM_TimerInitStructure.StartOnSync = HRTIM_SYNCSTART_DISABLED;
	HRTIM_TimerInitStructure.ResetOnSync = HRTIM_SYNCRESET_DISABLED;
	HRTIM_TimerInitStructure.DACSynchro = HRTIM_DACSYNC_NONE;
	HRTIM_TimerInitStructure.PreloadEnable = HRTIM_PRELOAD_ENABLED;
	HRTIM_TimerInitStructure.UpdateGating = HRTIM_UPDATEGATING_INDEPENDENT;
	HRTIM_TimerInitStructure.BurstMode = HRTIM_TIMERBURSTMODE_MAINTAINCLOCK;
	HRTIM_TimerInitStructure.RepetitionUpdate = HRTIM_UPDATEONREPETITION_ENABLED;

	HRTIM_BaseInitStructure.Period = PWM_PERIOD;
	HRTIM_BaseInitStructure.RepetitionCounter = 10;
	HRTIM_BaseInitStructure.PrescalerRatio = HRTIM_PRESCALERRATIO_MUL8;
	HRTIM_BaseInitStructure.Mode = HRTIM_MODE_CONTINOUS;

	HRTIM_Waveform_Init(HRTIM1, HRTIM_TIMERINDEX_MASTER, &HRTIM_BaseInitStructure, &HRTIM_TimerInitStructure);


	// TIMERA initialization: timer mode and PWM frequency
	HRTIM_TimerInitStructure.HalfModeEnable = HRTIM_HALFMODE_DISABLED;
	HRTIM_TimerInitStructure.StartOnSync = HRTIM_SYNCSTART_DISABLED;
	HRTIM_TimerInitStructure.ResetOnSync = HRTIM_SYNCRESET_DISABLED;
	HRTIM_TimerInitStructure.DACSynchro = HRTIM_DACSYNC_NONE;
	HRTIM_TimerInitStructure.PreloadEnable = HRTIM_PRELOAD_ENABLED;
	HRTIM_TimerInitStructure.UpdateGating = HRTIM_UPDATEGATING_INDEPENDENT;
	HRTIM_TimerInitStructure.BurstMode = HRTIM_TIMERBURSTMODE_MAINTAINCLOCK;
	HRTIM_TimerInitStructure.RepetitionUpdate = HRTIM_UPDATEONREPETITION_ENABLED;

	HRTIM_BaseInitStructure.Period = 65000; /* 400kHz switching frequency */
	HRTIM_BaseInitStructure.RepetitionCounter = 10;   /* 1 ISR every 128 PWM periods */
	HRTIM_BaseInitStructure.PrescalerRatio = HRTIM_PRESCALERRATIO_MUL8;
	HRTIM_BaseInitStructure.Mode = HRTIM_MODE_CONTINOUS;

	HRTIM_Waveform_Init(HRTIM1, HRTIM_TIMERINDEX_TIMER_A, &HRTIM_BaseInitStructure, &HRTIM_TimerInitStructure);



	/* ------------------------------------------------ */
	/* TIMERA output and registers update configuration */
	/* ------------------------------------------------ */
	HRTIM_TimerWaveStructure.DeadTimeInsertion = HRTIM_TIMDEADTIMEINSERTION_DISABLED;
	HRTIM_TimerWaveStructure.DelayedProtectionMode = HRTIM_TIMDELAYEDPROTECTION_DISABLED;
	HRTIM_TimerWaveStructure.FaultEnable = HRTIM_TIMFAULTENABLE_NONE;
	HRTIM_TimerWaveStructure.FaultLock = HRTIM_TIMFAULTLOCK_READWRITE;
	HRTIM_TimerWaveStructure.PushPull = HRTIM_TIMPUSHPULLMODE_DISABLED;
	HRTIM_TimerWaveStructure.ResetTrigger = HRTIM_TIMRESETTRIGGER_MASTER_PER;
	HRTIM_TimerWaveStructure.ResetUpdate = HRTIM_TIMUPDATEONRESET_DISABLED;
	HRTIM_TimerWaveStructure.UpdateTrigger = HRTIM_TIMUPDATETRIGGER_NONE;
	HRTIM_WaveformTimerConfig(HRTIM1, HRTIM_TIMERINDEX_TIMER_A, &HRTIM_TimerWaveStructure);

	// create general outputStructure
	HRTIM_TIM_OutputStructure.Polarity = HRTIM_OUTPUTPOLARITY_HIGH;
	HRTIM_TIM_OutputStructure.IdleMode = HRTIM_OUTPUTIDLEMODE_NONE;
	HRTIM_TIM_OutputStructure.IdleState = HRTIM_OUTPUTIDLESTATE_INACTIVE;
	HRTIM_TIM_OutputStructure.FaultState = HRTIM_OUTPUTFAULTSTATE_INACTIVE;
	HRTIM_TIM_OutputStructure.ChopperModeEnable = HRTIM_OUTPUTCHOPPERMODE_DISABLED;
	HRTIM_TIM_OutputStructure.BurstModeEntryDelayed = HRTIM_OUTPUTBURSTMODEENTRY_REGULAR;

	// change specific settings + use general outputStructure for TA1
	HRTIM_TIM_OutputStructure.SetSource = HRTIM_OUTPUTSET_MASTERPER;	    //rising edge pwm
	HRTIM_TIM_OutputStructure.ResetSource = HRTIM_OUTPUTRESET_TIMCMP1;		//falling edge pwm
	HRTIM_WaveformOutputConfig(HRTIM1, HRTIM_TIMERINDEX_TIMER_A, HRTIM_OUTPUT_TA1, &HRTIM_TIM_OutputStructure);

	// change specific settings + use general outputStructure for TA2
	HRTIM_TIM_OutputStructure.SetSource = HRTIM_OUTPUTSET_TIMCMP2;			//rising edge pwm
	HRTIM_TIM_OutputStructure.ResetSource = HRTIM_OUTPUTRESET_TIMCMP3;		//falling edge pwm
	HRTIM_WaveformOutputConfig(HRTIM1, HRTIM_TIMERINDEX_TIMER_A, HRTIM_OUTPUT_TA2, &HRTIM_TIM_OutputStructure);

	// configure output compare structure for PWM
	HRTIM_CompareCfgTypeDef HRTIM_CompareStructure;
	HRTIM_CompareStructure.AutoDelayedMode = HRTIM_AUTODELAYEDMODE_REGULAR;
	HRTIM_CompareStructure.AutoDelayedTimeout = 0;

	HRTIM_CompareStructure.CompareValue = PULSE_PERIOD; // BUCK_PWM_PERIOD/4;
	HRTIM_WaveformCompareConfig(HRTIM1, HRTIM_TIMERINDEX_TIMER_A, HRTIM_COMPAREUNIT_1, &HRTIM_CompareStructure);

	HRTIM_CompareStructure.CompareValue = PWM_PERIOD/2;
	HRTIM_WaveformCompareConfig(HRTIM1, HRTIM_TIMERINDEX_TIMER_A, HRTIM_COMPAREUNIT_2, &HRTIM_CompareStructure);

	HRTIM_CompareStructure.CompareValue = PWM_PERIOD/2 + PULSE_PERIOD;
	HRTIM_WaveformCompareConfig(HRTIM1, HRTIM_TIMERINDEX_TIMER_A, HRTIM_COMPAREUNIT_3, &HRTIM_CompareStructure);

	// configure output compare structure for ADC
	HRTIM_MasterSetCompare(HRTIM1, HRTIM_COMPAREUNIT_1, PULSE_PERIOD/2);
	HRTIM_MasterSetCompare(HRTIM1, HRTIM_COMPAREUNIT_2, PULSE_PERIOD/2 + PWM_PERIOD/4);


	//Configure ADC TRIGGER
	HRTIM_ADCTriggerCfgTypeDef HRTIM_ADCTriggerStruct;
	HRTIM_ADCTriggerStruct.Trigger = HRTIM_ADCTRIGGEREVENT24_MASTER_CMP1 | HRTIM_ADCTRIGGEREVENT24_MASTER_CMP2;
	HRTIM_ADCTriggerStruct.UpdateSource = HRTIM_ADCTRIGGERUPDATE_MASTER;
	HRTIM_ADCTriggerConfig(HRTIM1, HRTIM_ADCTRIGGER_2, &HRTIM_ADCTriggerStruct);


	// Enable HTRIM interrupt
	HRTIM_ITConfig(HRTIM1,HRTIM_TIMERINDEX_MASTER, HRTIM_MASTER_IT_MREP, ENABLE);

	// Configureer interrupt
	NVIC_InitTypeDef    NVIC_InitStructure;
	NVIC_InitStructure.NVIC_IRQChannel = HRTIM1_Master_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);


	// Start HRTIM TIMER A and outputs
	HRTIM_WaveformOutputStart(HRTIM1, HRTIM_OUTPUT_TA1 | HRTIM_OUTPUT_TA2);
	HRTIM_WaveformCounterStart(HRTIM1, HRTIM_TIMERID_MASTER | HRTIM_TIMERID_TIMER_A);



}

void hrtimSetFreqDuty(float freq, float duty){
	int PWM_PERIOD = 2.0f*72000000.0f*8.0f/freq; // 2*72M minimale frequentie, 8 komt van prescaler
	int PULSE_PERIOD = duty*PWM_PERIOD;


	// HRTIM1 -> MASTER -> ADC meeting bij 0°
	HRTIM_MasterSetCompare(HRTIM1, HRTIM_COMPAREUNIT_1, PULSE_PERIOD/2);

	// HRTIM1 -> MASTER -> ADC meeting bij 90°
	HRTIM_MasterSetCompare(HRTIM1, HRTIM_COMPAREUNIT_2, PWM_PERIOD/4 + PULSE_PERIOD/2);


	// HRTIM1 -> TIMER A -> COMPARE 1
	HRTIM1->HRTIM_TIMERx[0].CMP1xR = PULSE_PERIOD;

	// HRTIM1 -> TIMER A -> COMPARE 2
	HRTIM1->HRTIM_TIMERx[0].CMP2xR = PWM_PERIOD/2;

	// HRTIM1 -> TIMER A -> COMPARE 3
	HRTIM1->HRTIM_TIMERx[0].CMP3xR = PWM_PERIOD/2 + PULSE_PERIOD;

	// HRTIM1 -> TIMER A -> PERIOD REGISTER
	HRTIM1->HRTIM_MASTER.MPER = PWM_PERIOD;
}
