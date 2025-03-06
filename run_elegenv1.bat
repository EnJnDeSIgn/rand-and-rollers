@echo off
cls

REM Run the call_phard.py script to randomize the seed
echo Running call_phard.py to randomize the seed...
python call_phard.py

REM Run the ELEgenV1.exe program
echo Running ELEgenV1.exe...
ELEgenV1.exe

echo Done.