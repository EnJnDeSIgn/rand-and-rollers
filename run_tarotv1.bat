@echo off
cls

REM Compile the Fortran program
echo Compiling tarot_card_generator_EnJnDeSIgn2024.f90...
gfortran -o TarotV1.exe TarotV1.f90

:loop
REM Run the ele_call.py script to randomize the seed
echo Running ele_call.py to randomize the seed...
python ele_call.py

REM Run the TarotV1.exe program
echo Running TarotV1.exe...
TarotV1.exe

REM Run the ele_call.py script to keep randomizing the seed
echo running ele_call.py to randomize the seed again...
python ele_call.py

REM Prompt to draw another card
set /p user_input="Draw another card? (Y/N): "
if /I "%user_input%"=="Y" goto loop

echo Done.