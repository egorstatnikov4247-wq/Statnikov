@echo off
chcp 65001 >nul
rem Запуск программы «Телефонный справочник»
cd /d "%~dp0"
where pythonw >nul 2>nul && (start "" pythonw src\app.py & exit /b)
where py >nul 2>nul && (start "" py -3 src\app.py & exit /b)
where python >nul 2>nul && (start "" python src\app.py & exit /b)
echo Python не найден. Установите Python 3.8+ с python.org (галочка "Add Python to PATH").
pause
