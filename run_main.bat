@echo off
cls

REM Compile the Fortran programs
echo Compiling story_element_generator_EnJnDeSIgn2024.f90...
gfortran -o ELEgenV1.exe ELEgenV1.f90

REM Run the ele_call.py script to randomize the seed multiple times
echo Running ele_call.py to randomize the seed...
for /L %%i in (1,1,5) do (
    python ele_call.py
)

REM Run the ELEgenV1.exe program
echo Running ELEgenV1.exe...
ELEgenV1.exe

REM Run the ele_call.py script to randomize the seed again
echo running ele_call.py to randomize the seed again...
python ele_call.py