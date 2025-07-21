@echo off
setlocal

:menu
:: Exibir o menu e ler a entrada do usuário
cls
echo 1 - Seno
echo 2 - Cosseno
echo 3 - Sair
echo.
set /p tipo="Escolha uma opcao: "

:: Verificar se a entrada é válida
if "%tipo%" neq "1" if "%tipo%" neq "2" if "%tipo%" neq "3" (
    echo.
    echo Opcao invalida. Escolha 1, 2 ou 3.
    echo.
    pause
    goto menu
)

:: Passar a entrada do usuário para o Gnuplot
if "%tipo%" equ "3" (
    echo.
    echo Aplicacao encerrada...
    echo.
    pause
    exit /b
)

wgnuplot -persist -e "tipo=%tipo%" prog07.gp
echo.
goto menu
