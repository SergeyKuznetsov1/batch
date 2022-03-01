@echo OFF
if exist "C:\Windows\System32\Printing_Admin_Scripts\en-US\*.*" set scriptPath="C:\Windows\System32\Printing_Admin_Scripts\en-US\"
if exist "C:\Windows\System32\Printing_Admin_Scripts\ru-RU\*.*" set scriptPath="C:\Windows\System32\Printing_Admin_Scripts\ru-RU\"

cscript "%scriptPath:~1,-1%prndrvr.vbs" -a -m "KONICA MINOLTA Universal PCL" -i "%~dp0Konica_PLC6_universal\KOAX8J__.inf"
set printname="Praktik Gorohovaya 4 floor"
set queuename="G4"
powershell -Command "(gc '%~dp0color_template.reg') -replace 'template_printname', '%printname%' | Out-File '%~dp0color.reg'"
cscript "%scriptPath:~1,-1%prnmngr.vbs" -d -p %printname%
cscript "%scriptPath:~1,-1%prnport.vbs" -d -r IP_praktik_%queuename%
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Print\Printers\%printname:~1,-1%" /f
cscript "%scriptPath:~1,-1%prnport.vbs" -a -r IP_praktik_%queuename% -h print.praktik.work -o lpr -n 515 -q "%queuename%" -2e
cscript "%scriptPath:~1,-1%prnmngr.vbs" -a -p %printname% -m "KONICA MINOLTA Universal PCL" -r "IP_praktik_%queuename%"
cscript "%scriptPath:~1,-1%prnmngr.vbs" -t -p %printname%
reg import "%~dp0color.reg"

set printname="Praktik Gorohovaya 4 floor CofeSpot"
set queuename="G4CS"
powershell -Command "(gc '%~dp0color_template.reg') -replace 'template_printname', '%printname%' | Out-File '%~dp0color.reg'"
cscript "%scriptPath:~1,-1%prnmngr.vbs" -d -p %printname%
cscript "%scriptPath:~1,-1%prnport.vbs" -d -r IP_praktik_%queuename%
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Print\Printers\%printname:~1,-1%" /f
cscript "%scriptPath:~1,-1%prnport.vbs" -a -r IP_praktik_%queuename% -h print.praktik.work -o lpr -n 515 -q "%queuename%" -2e
cscript "%scriptPath:~1,-1%prnmngr.vbs" -a -p %printname% -m "KONICA MINOLTA Universal PCL" -r "IP_praktik_%queuename%"
cscript "%scriptPath:~1,-1%prnmngr.vbs" -t -p %printname%
reg import "%~dp0color.reg"

set printname="Praktik Gorohovaya 3 floor"
set queuename="G3"
powershell -Command "(gc '%~dp0color_template.reg') -replace 'template_printname', '%printname%' | Out-File '%~dp0color.reg'"
cscript "%scriptPath:~1,-1%prnmngr.vbs" -d -p %printname%
cscript "%scriptPath:~1,-1%prnport.vbs" -d -r IP_praktik_%queuename%
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Print\Printers\%printname:~1,-1%" /f
cscript "%scriptPath:~1,-1%prnport.vbs" -a -r IP_praktik_%queuename% -h print.praktik.work -o lpr -n 515 -q "%queuename%" -2e
cscript "%scriptPath:~1,-1%prnmngr.vbs" -a -p %printname% -m "KONICA MINOLTA Universal PCL" -r "IP_praktik_%queuename%"
cscript "%scriptPath:~1,-1%prnmngr.vbs" -t -p %printname%
reg import "%~dp0color.reg"

set printname="Praktik Gorohovaya 3 floor reception"
set queuename="G3R"
powershell -Command "(gc '%~dp0color_template.reg') -replace 'template_printname', '%printname%' | Out-File '%~dp0color.reg'"
cscript "%scriptPath:~1,-1%prnmngr.vbs" -d -p %printname%
cscript "%scriptPath:~1,-1%prnport.vbs" -d -r IP_praktik_%queuename%
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Print\Printers\%printname:~1,-1%" /f
cscript "%scriptPath:~1,-1%prnport.vbs" -a -r IP_praktik_%queuename% -h print.praktik.work -o lpr -n 515 -q "%queuename%" -2e
cscript "%scriptPath:~1,-1%prnmngr.vbs" -a -p %printname% -m "KONICA MINOLTA Universal PCL" -r "IP_praktik_%queuename%"
cscript "%scriptPath:~1,-1%prnmngr.vbs" -t -p %printname%
reg import "%~dp0color.reg"
timeout 5