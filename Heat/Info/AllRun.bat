::*********************************************************#
::	                Personal Data
::*********************************************************#
:: Author:       Chariton L. Pavlidis
:: Company:      MM Group Consulting Engineers
:: Department:   Mechanical & Electrical Engineering
:: Email:        clpavlidis@outlook.com
:: Tel:          (+30) 28210 51522
:: Ext:          405
::*********************************************************#

@echo off

title Heat

echo " 1. Case initialization"

:: Main & Subroutines Compilation

echo " 2. Code Compilation"
cd Routines\
gfortran .\1_Heat.f90 .\2_Vars_Init.f90 .\3_Grid_Points.f90 .\4_BCs.f90 .\5_Diagonals.f90 .\6_GaussSeidel.f90 .\7_Contour.f90 -o .\Heat.exe

:: Code Execution

echo " 3. Code Execution"
cd Routines\
.\Heat.exe

pause
