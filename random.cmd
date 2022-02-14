@echo off
setlocal ENABLEDELAYEDEXPANSION
set MIN=0
set MAX=300
set /a R=MIN+(MAX-MIN+1) * !random!/32768
echo %R%
timeout /t %R%