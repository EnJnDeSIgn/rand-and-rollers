@echo off
cls

REM Run the ele_call.py script to randomize the seed
echo Running ele_call.py to randomize the seed...
python ele_call.py

REM Run the TarotV1.exe program
echo Running TarotV1.exe...
TarotV1.exe

REM Run the ele_call.py script to keep randmizing the seed
echo running ele_call.py to randomize the seed again...
python ele_call.py

echo Done.