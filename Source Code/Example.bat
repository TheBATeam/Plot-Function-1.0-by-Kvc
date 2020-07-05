@Echo off
cls

Title Plot 1.0 - Demo - www.thebateam.org
Set "Path=%Path%;%cd%;%cd%\files"
Color 0a

Setlocal enabledelayedexpansion
Mode 120,40

REM The 'REM' command is used for displaying comments in batch files...
REM This file Is just an example file, which will demonstrate the working of The Plot.Bat
REM Function...
REM 
REM created by Kvc...
REm 12:01 PM 1/2/2016
REM 

REM generating co-ordinates of a diagonal line through 'X=Y' equation...
For /l %%A in (-8,1,8) do (Set "_Co_ordinates=!_Co_ordinates!%%A,%%A ")

REM Green colored 'x' will deisplay the co-ordinates...
Call Plot x 0a 2 !_Co_ordinates!

REM deleting / emptying the '_Co_ordinates' variable...
Set _Co_ordinates=

REM generating co-ordinates of a diagonal line through 'X=5' equation...
For /l %%A in (-8,1,8) do (Set "_Co_ordinates=!_Co_ordinates!5,%%A ")

REM RED colored '*' will deisplay the co-ordinates...
Call Plot * 0c 2 !_Co_ordinates!

Timeout /t 3 >nul
Batbox /c 0x0f /g 3 2 /d " Now, you can graphically find the intersection of two equations of line... etc."
Pause >nul

REM Visit, https://batchprogrammers.blogspot.com
REM #TheBATeam