# Script para Depuração ADB via Rede Wi-Fi

Este é um script desenvolvido para facilitar a depuração remota de dispositivos Android utilizando o Android Debug Bridge (ADB) via conexão Wi-Fi. O ADB é uma ferramenta de linha de comando que permite aos desenvolvedores interagir com dispositivos Android para depurar aplicativos e realizar várias outras tarefas de desenvolvimento.

Funcionalidades
Conexão Wi-Fi: O script automatiza o processo de conexão do dispositivo Android ao ADB via Wi-Fi, eliminando a necessidade de cabos USB.
Facilidade de Uso: Com apenas um comando, o dispositivo é conectado ao ADB via rede Wi-Fi, simplificando o processo de depuração remota.
Flexibilidade: O script pode ser personalizado para atender às necessidades específicas do ambiente de desenvolvimento, como configurar portas específicas ou automatizar tarefas adicionais.
 
Como Usar
Preparação: Certifique-se de que o dispositivo Android e o computador estejam na mesma rede Wi-Fi.
Execução do Script: Execute o script em um terminal ou prompt de comando, seguindo a sintaxe adequada.

Requisitos
O dispositivo Android deve ter o modo de depuração USB ativado.
O computador deve ter o ADB instalado e configurado corretamente.


# Depuração ADB via Rede Wi-Fi

Este é um pequeno script em batch (.bat) que facilita a depuração ADB via rede Wi-Fi. O script permite acessar rapidamente o diretório necessário e oferece a opção de fechar o script de forma conveniente.

## Utilização

### Requisitos
- Ter o Android SDK instalado e configurado.
- Conexão Wi-Fi estável entre o dispositivo Android e o computador.

### Como usar
1. Execute o script.
2. Insira o endereço IP na rede do seu dispositivo Android quando solicitado.
3. Selecione a opção para acessar o diretório necessário.
4. Após a conclusão das operações desejadas, você pode optar por fechar o script.

## Script

```bat
@echo off
echo # IP NA REDE: [DIGITE SEU ENDEREÇO IP]
echo # DIRETORIO : C:\Users\anton\AppData\Local\Android\Sdk\platform-tools

:pergunta1
echo.
set /p op= Digite 1 para Acessar o Diretório: 
if "%op%" equ "1" goto 1
if /i "%op%" equ "exit" goto exitt
echo Nao entendi...
goto pergunta1

:1
echo Aguarde... Abrindo local do diretório.
echo.
start cd C:\Users\anton\AppData\Local\Android\Sdk\platform-tools 

:pergunta2
echo.
set /p sair= Deseja fechar o Script? Digite (y ou exit): 
if /i "%sair%" equ "y" goto sair
if /i "%sair%" equ "exit" goto exitt
echo Nao entendi...
goto pergunta2

:sair
exit

:exitt
exit
