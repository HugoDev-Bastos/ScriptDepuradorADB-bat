@echo off

:menu

echo Comandos do ADB para Conectar remotamente o Android para Depuracao no VScode.
echo.
echo  **********************************
echo  **                              ** 
echo  **  CONECTE O CELULA NO USB     **
echo  **  ATIVE A DEPURACAO NO MODO   **
echo  **  DESENVOLVEDO NO ANDROID.    ** 
echo  **                              ** 
echo  **  1  Acessar Diretorio        ** <== Primeiro abra o Diretorio na pasta do adb.
echo  **  2  adb devices              ** <== lista de dispositivos conectados.
echo  **  3  adb disconnect           ** <== Desconectar dispositivos conectados.
echo  **  4  adb tcpip 5555           ** <== Abri porta para uma Conexao.
echo  **  5  adb connect IP:5555      ** <== No [IP] Coloque o do seu Celular ex:192.168.0.195:5555.
echo  **  6  exit                     ** <== Digite "exit" para fechar o Script.
echo  **                              **
echo  **********************************
echo  ********  DEPURADOR ADB  ********* 
echo  **********************************
echo.
echo # IP NA REDE: [DIGITE SEU ENDEREÇO I]
echo # DIRETORIO : C:\Users\anton\AppData\Local\Android\Sdk\platform-tools

:pergunta1
echo.

set /p op= Digite 1 para Acessar o Diretorio: 
if %op% equ 1 goto 1
if %op% equ exit goto exitt
if %op% equ EXIT goto exitt
:else
echo Nao entendi...
goto pergunta1


:1
echo Aguarde... Abrindo local do diretorio.
echo.
start cd C:\Users\anton\AppData\Local\Android\Sdk\platform-tools 

:pergunta2
echo.

set /p sair= Deseja fechar o Script? digite (y ou exit)?: 
if %sair% equ y goto sair
if %sair% equ Y goto sair
if %sair% equ exit goto exitt
if %sair% equ EXIT goto exitt
:else
echo Nao entendi...
goto :pergunta2

:sair
exit

:exitt
exit


 