# Sleep Environment Project


## Project Overview

The goal is to create a system around the STM32 Blue Pill that consists of a CO2 sensor as well as a temperature sensor to test
both air quality (in CO2 ppm - parts per million) as well as temperature respectively. Then, these measurements should be output to
an E-ink display. Finally, itll periodically output the measurements to the MicroSD card so I can keep track of the data.

This is to be done all in bare metal.

The Blue Pill is built around the STM32F103C8T6 : ARM Cortex-M3 @ 72MHz.

## High-Level Flow
- Every 4 minutes, have CO2 sensor take measurements
- Log it to the MicroSD
- Output it to the E-Ink Display

## Requirements
- System must log data to both microSD and display every 4 mins
- System must be able to run reliably on a portable power source ( to be determined: probably a battery of sorts)

## Components
STM32 Blue Pill  
AdaFruit MicroSD Card Breakout  
Waveshare 2.13 inch E-Ink Display HAT v4.  
HiLetgo SCD41 CO2 Carbon Dioxide Gas Sensor  
Temperature and Humidity Sensor  

## Stretch Goals
I have an Oura Ring so something I want to do is use the Oura API and sync it with my sleep environment data to see if my sleep quality
according to my ring is actually better under certain room conditions.


## Resources
[STM32F103C8T6 Datsheet](https://www.st.com/en/microcontrollers-microprocessors/stm32f103c8.html)  
[RM0008 Reference Manual](https://www.st.com/resource/en/reference_manual/rm0008-stm32f101xx-stm32f102xx-stm32f103xx-stm32f105xx-and-stm32f107xx-advanced-armbased-32bit-mcus-stmicroelectronics.pdf)  
[Blue Pill Schematic](https://stm32-base.org/assets/pdf/boards/original-schematic-STM32F103C8T6-Blue_Pill.pdf)   
[SCD40/41 Datasheet](https://download.mikroe.com/documents/datasheets/SCD41%20Datasheet.pdf)  
[SCD41 comment on low power](https://sensirion.com/media/documents/077BC86F/62BF01B9/CD_AN_SCD4x_Low_Power_Operation_D1.pdf)  
[E-Ink Display Datasheet](https://files.waveshare.com/upload/4/4e/2.13inch_e-Paper_V4_Specification.pdf)  


