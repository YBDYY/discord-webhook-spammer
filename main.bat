@echo off
chcp 65001
title Webhook Spammer - by YDBYY
color 0A


set ESC=


:menu
cls


echo %ESC%[32m ██╗    ██╗███████╗██████╗ ██╗  ██╗ ██████╗  ██████╗ ██╗  ██╗     %ESC%[34m███████╗██████╗  █████╗ ███╗   ███╗███████╗██████╗  
echo %ESC%[32m ██║    ██║██╔════╝██╔══██╗██║  ██║██╔═══██╗██╔═══██╗██║ ██╔╝     %ESC%[34m██╔════╝██╔══██╗██╔══██╗████╗ ████║██╔════╝██╔══██╗ 
echo %ESC%[32m ██║ █╗ ██║█████╗  ██████╔╝███████║██║   ██║██║   ██║█████╔╝█████╗%ESC%[34m███████╗██████╔╝███████║██╔████╔██║█████╗  ██████╔╝ 
echo %ESC%[32m ██║███╗██║██╔══╝  ██╔══██╗██╔══██║██║   ██║██║   ██║██╔═██╗╚════╝%ESC%[34m╚════██║██╔═══╝ ██╔══██║██║╚██╔╝██║██╔══╝  ██╔══██╗ 
echo %ESC%[32m ╚███╔███╔╝███████╗██████╔╝██║  ██║╚██████╔╝╚██████╔╝██║  ██╗     %ESC%[34m███████║██║     ██║  ██║██║ ╚═╝ ██║███████╗██║  ██║ 
echo %ESC%[32m  ╚══╝╚══╝ ╚══════╝╚═════╝ ╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝     %ESC%[34m╚══════╝╚═╝     ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝ 
echo %ESC%[0m
echo ┌────────────────────────────────┐
echo │            SPAMMER             │
echo ├────────────────────────────────┤
echo │ 1. Exit                        │
echo │ 2. Discord webhook spammer     │
echo └────────────────────────────────┘
set /p choice=Enter your choice: 

if "%choice%"=="1" goto :eof
if "%choice%"=="2" goto messagesender
goto menu

:messagesender
cls
echo ┌────────────────────────────────┐
echo │     Discord webhook spammer    │
echo ├────────────────────────────────┤
set /p "webhook=│ Enter Discord webhook URL for Message Sender: "
set /p "message=│ Enter the message to send: "
set /p "num_times=│ Enter the number of times to send the message: "

for /l %%n in (1,1,%num_times%) do (
    :: heres where i can send the messages
    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"%message%\"}" %webhook%
)
echo Messages sent successfully.
pause
goto menu
