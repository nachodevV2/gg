@echo off
title Going through the woods.
color 04

if "%1" neq "" ( goto %1)

:Menu
cls
echo 1. Start
echo 2. Credits
echo 3. Exit
set /p answer=Type the number of your option and press enter : 
if %answer%==1 goto Start_1
if %answer%==2 goto Credits
if %answer%==3 goto Exit

:Exit
cls
echo Thanks for playing!
pause
exit /b

:Credits
cls
echo Credits
echo - Made by Boris O.
echo Thank you for playing this game!
pause
goto Menu

:Start_1
cls
echo You are going through the woods.
pause
echo You enter a particularly dark part, where you get lost.
pause
echo As if it could not get worse...
pause
echo Oh no! You're surrounded by enemies.
echo There are five of them, and they're all armed.
echo If you fight them, you are having a high chance of winning.
set /p answer=Would you like to fight or run?
if %answer%==fight goto Fight_1
if %answer%==run goto Run_1
pause

:Run_1
cls
echo You live to fight another day.
pause
goto Start_1

:Fight_1
echo You now have to prepare to fight. 
pause
echo The enemies suddenly rush you all at once.
set /p answer= Type 1 and press Enter to continue. 
if %answer%==1 goto Fight_1_Loop

:Fight_1_Loop
set /a num=%random%
if %num%==1 goto Lose_Fight_1
if %num%==2 goto Win_Fight_1

:Lose_Fight_1
cls
echo You were defeated. Play again?
pause
goto Menu

:Win_Fight_1
cls
echo You are victorious!
set /p answer=Would you like to continue through the woods? [yes/no]
if %answer%=='yes' goto 'Continue_2'
if %answer%=='no' goto 'Start_2'

:Continue_2
echo You proceed through the woods.
pause
echo Finally, you reach the end. You know there is a way out!
