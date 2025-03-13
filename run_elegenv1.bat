@echo off
cls

REM Compile the Fortran programs
echo Compiling story_element_generator_EnJnDeSIgn2024.f90...
gfortran -o ELEgenV1.exe ELEgenV1.f90

echo Compiling intro.f90...
gfortran -o intro.exe intro.f90

REM Run the ele_call.py script to randomize the seed
echo Running ele_call.py to randomize the seed...
python ele_call.py

REM Run the intro.exe
intro.exe

:loop
REM Run the ELEgenV1.exe program
echo Running ELEgenV1.exe...
ELEgenV1.exe

REM Run the ele_call.py script to keep randomizing the seed
echo running ele_call.py to randomize the seed again...
python ele_call.py

REM Prompt to pick another element
set /p user_input="Pick another element? (Y/N): "
if /I "%user_input%"=="Y" goto loop

echo Thank you for using the Story Element Generator.