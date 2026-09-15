# Sleep Environment Project


## Project Overview

The goal is to create a system around the STM32 Blue Pill that consists of a CO2 sensor as well as a temperature sensor to test
both air quality (in CO2 ppm - parts per million) as well as temperature respectively. Then, these measurements should be output to
an E-ink display. Finally, itll periodically output the measurements to the MicroSD card so I can keep track of the data.

This is to be done all in bare metal.

The Blue Pill is built around the STM32F103C8T6 : ARM Cortex-M3 @ 72MHz.

## Components

STM32 Blue Pill
AdaFruit MicroSD Card Breakout
Waveshare 2.13 inch E-Ink Display HAT v4
HiLetgo SCD41 CO2 Carbon Dioxide Gas Sensor
Temperature and Humidity Sensor

## Stretch Goals

I have an Oura Ring so something I want to do is use the Oura API and sync it with my sleep environment data to see if my sleep quality
according to my ring is actually better under certain room conditions.


