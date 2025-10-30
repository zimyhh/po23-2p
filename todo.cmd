@echo off 
chcp 65001
setlocal enabledelayedexpansion


@rem Меню ---------
set "DATA=%~dp0tasks.txt"

:menu
cls
echo ==============================
echo         TO-DO treker
echo ==============================
echo 1. Показать список задач
echo 2. Добавить задачу
echo 3. Удалить задачу
echo 0. Выход
echo ==============================
set /p choice="Выберите команду "
if "%choice%"=="3" goto del 
if "%choice%"=="2" goto add
if "%choice%"=="1" goto list
if "%choice%"=="0" goto exit
goto menu

@rem List--------------------------------------------------------------------------

:list
cls
echo ==============================
echo         Список задач
echo ==============================
if not exist "%DATA%" ( echo Задач нет.& pause & goto menu)

for /f "usebackq tokens=1-3 delims=|" %%a in ("%DATA%") do (
    set "id=%%a"
    set "text=%%b"
    set "status=%%c"
    if defined id (
        if "!status!"=="1" (
            echo [ВЫПОЛНЕНО] !id! ^| !text!
        ) else (
            echo [ ] !id! ^| !text!
        )
    )
)
echo ==============================
pause
goto menu

@rem add----------------------------------------------------------------------------------

:add
cls
echo ==============================
echo       Добавление задач
echo ==============================
set "text="
set /p text="Введите новую задачу "
if not defined text (Задача пуста. Отменяется. & pause & goto menu )

set "last=0"
for /f "usebackq tokens=1 delims=|" %%a in ('type "%DATA%" ^| findstr /r "^[0-9][0-9]*|" 2^>nul') do (
    set "last=%%a"
)

set /a next=last+1

>>"%DATA%" echo %next%^|%text%^|0
echo [Принять] Добавлено: #%next% - %text%
pause
goto menu


@rem del-------------------------------------------------------------------------------------

:del
cls
echo ==============================
echo        Удаление задачи
echo ==============================
if not exist "%DATA%" (
    echo Файл задач отсутствует.
    pause
    goto menu
)
set /p delid="Введите id для удаления: "
if not defined delid (
    echo Отмена.
    pause
    goto menu
)

set "tmp=%TEMP%\todo_tmp_%RANDOM%.txt"
break> "%tmp%"
for /f "usebackq delims=" %%L in ("%DATA%") do (
    for /f "tokens=1* delims=|" %%A in ("%%L") do (
        if "%%A" NEQ "%delid%" echo %%L>>"%tmp%"
    )
)
move /y "%tmp%" "%DATA%" >nul
echo Удалено (если было): %delid%
pause
goto menu


:exit
exit /b