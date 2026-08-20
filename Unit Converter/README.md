# Unit Converter using Verilog

## Description

This project implements a digital Unit Converter
using Verilog HDL.

The system supports conversions between length,
weight, and time units.

## Supported Conversions

000 = Meter to Centimeter

001 = Centimeter to Meter

010 = Kilometer to Meter

011 = Kilogram to Gram

100 = Gram to Kilogram

101 = Hour to Minute

110 = Minute to Second

111 = Second to Minute

## Conversion Examples

5 m = 500 cm

500 cm = 5 m

3 km = 3000 m

7 kg = 7000 g

5000 g = 5 kg

2 hours = 120 minutes

5 minutes = 300 seconds

120 seconds = 2 minutes

## Files

unit_converter.v
- Main Verilog design

unit_converter_tb.v
- Testbench for simulation

README.md
- Project documentation

## Tools Used

- VS Code
- Verilog HDL
- Icarus Verilog
- GTKWave

## Concepts Used

- Case statement
- Arithmetic operations
- Multiplication
- Division
- Registers
- Clock
- Reset
- Testbench
