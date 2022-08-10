#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

ARDUINO_Port     = COM4 
ARDUINO_Baud     = 115200
ARDUINO_Parity   = N
ARDUINO_Data     = 8
ARDUINO_Stop     = 1
arduino_setup(start_polling_serial:=false)

left::
arduino_send(180)
Return

Right::
arduino_send(0)
Return

OnExit:
arduino_close()

#include %A_ScriptDir%\Arduino.ahk
