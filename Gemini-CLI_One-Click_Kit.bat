@echo off
setlocal EnableDelayedExpansion
chcp 65001 >nul 2>&1

REM ============================================================
REM  Gemini CLI 스마트 런처 v2.1 (입력 대기 버그 수정)
REM ============================================================

set "SCRIPT_NAME=%~nx0"
set "SCRIPT_DIR=%~dp0"
set "LOG_FILE=%SCRIPT_DIR%gemini_cli.log"
set "CONFIG_DIR=%USERPROFILE%\.config\gemini-cli"

set "CONFIG_DIR=%USERPROFILE%\.config\gemini-cli"

REM === NPM GLOBAL PATH 자동 추가 ===
set "NPM_GLOBAL=%APPDATA%\npm"
if exist "%NPM_GLOBAL%" set "PATH=%NPM_GLOBAL%;%PATH%"

cls
title Gemini CLI 스마트 런처

REM ============================================================
REM  Step 1: 환경 검증
REM ============================================================

echo.
echo [1/5] 시스템 환경 검증 중...
echo.

where node >nul 2>&1
if errorlevel 1 (
    call :ERROR_NODE_NOT_FOUND
    goto :END
)

for /f "tokens=1" %%v in ('node --version') do set "NODE_VER=%%v"
set "NODE_VER=!NODE_VER:v=!"
for /f "tokens=1 delims=." %%a in ("!NODE_VER!") do set "NODE_MAJOR=%%a"

if !NODE_MAJOR! LSS 20 (
    call :ERROR_NODE_VERSION !NODE_VER!
    goto :END
)

echo    ✓ Node.js !NODE_VER! 감지 완료

where npm >nul 2>&1
if errorlevel 1 (
    call :ERROR_NPM_NOT_FOUND
    goto :END
)

echo    ✓ NPM 정상 작동

ping -n 1 registry.npmjs.org >nul 2>&1
if errorlevel 1 (
    call :WARNING_NETWORK
)

echo    ✓ 네트워크 연결 정상
echo.

REM ============================================================
REM  Step 2: Gemini CLI 설치 상태 확인
REM ============================================================

echo [2/5] Gemini CLI 상태 확인 중...
echo.

where gemini >nul 2>&1
if errorlevel 1 (
    call :INSTALL_GEMINI
    if errorlevel 1 goto :END
) else (
    echo    ✓ Gemini CLI 이미 설치됨
)

for /f "delims=" %%v in ('gemini --version 2^>nul') do set "GEMINI_VER=%%v"
if defined GEMINI_VER (
    echo    ✓ 버전: !GEMINI_VER!
) else (
    echo    ! 버전 확인 실패 (재설치 권장)
)

echo.

REM ============================================================
REM  Step 3: 다중 실행 방지
REM ============================================================

echo [3/5] 프로세스 충돌 검사 중...
echo.

tasklist /FI "IMAGENAME eq node.exe" /FI "WINDOWTITLE eq *gemini*" 2>nul | find /i "node.exe" >nul
if not errorlevel 1 (
    call :WARNING_ALREADY_RUNNING
    
    REM 입력 변수 초기화 (중요!)
    set "CONTINUE="
    set /p "CONTINUE=계속 진행하시겠습니까? (y/n): "
    
    if /i not "!CONTINUE!"=="y" (
        echo.
        echo    취소되었습니다.
        timeout /t 2 >nul
        goto :END
    )
)

echo    ✓ 충돌 없음
echo.

REM ============================================================
REM  Step 4: 초기 설정 또는 바로 실행
REM ============================================================

if exist "%CONFIG_DIR%\*" goto :ALREADY_CONFIGURED

REM ========== 첫 실행: 초기 설정 ==========
:FIRST_RUN
cls
echo.
echo    ╔════════════════════════════════════════════════╗
echo    ║                                                ║
echo    ║        🤖 Gemini CLI 초기 설정 마법사          ║
echo    ║                                                ║
echo    ║        Google AI와 대화를 시작하세요           ║
echo    ║                                                ║
echo    ╚════════════════════════════════════════════════╝
echo.
echo.
echo    처음 오셨네요! 간단한 설정으로 평생 무료 사용 💚
echo.
echo    ──────────────────────────────────────────────────
echo.
echo    로그인 방법 선택:
echo.
echo      [1] 🌟 구글 계정 로그인 (추천!)
echo          - 가장 쉬운 방법
echo          - 분당 60회, 하루 1,000회 무료
echo.
echo      [2] 🔑 API 키 입력
echo          - 고급 사용자용
echo          - 하루 100회 무료
echo.
echo    ──────────────────────────────────────────────────
echo.

REM 입력 변수 초기화 (핵심 수정!)
set "LOGIN_METHOD="
set /p "LOGIN_METHOD=숫자를 입력하세요 (1 또는 2): "

REM 입력값이 비어있는 경우 처리
if not defined LOGIN_METHOD (
    echo.
    echo    ❌ 입력이 없습니다. 다시 시도해주세요.
    timeout /t 2 >nul
    goto :FIRST_RUN
)

if not "!LOGIN_METHOD!"=="1" if not "!LOGIN_METHOD!"=="2" (
    echo.
    echo    ❌ 잘못된 입력입니다. 1 또는 2를 입력해주세요.
    timeout /t 2 >nul
    goto :FIRST_RUN
)

echo.
echo    ✓ 선택 완료! 자동 설정을 시작합니다...
echo.
timeout /t 2 >nul

REM 자동 입력 스크립트 생성
(
echo Set WshShell = CreateObject^("WScript.Shell"^)
echo WScript.Sleep 3000
echo WshShell.SendKeys "{DOWN}"
echo WScript.Sleep 500
echo WshShell.SendKeys "{ENTER}"
echo WScript.Sleep 1000
if "!LOGIN_METHOD!"=="2" (
    echo WshShell.SendKeys "{DOWN}"
    echo WScript.Sleep 500
)
echo WshShell.SendKeys "{ENTER}"
) > "%TEMP%\gemini_setup.vbs"

start "Gemini CLI 설정" cmd /k "title Gemini CLI 초기 설정 & color 0A & gemini"

timeout /t 2 >nul
cscript //nologo "%TEMP%\gemini_setup.vbs" >nul 2>&1

echo.
echo    ──────────────────────────────────────────────────
echo.
if "!LOGIN_METHOD!"=="2" (
    echo    📋 API 키를 입력창에 붙여넣으세요 (Ctrl+V)
    echo    💡 API 키 생성: https://aistudio.google.com/apikey
) else (
    echo    🌐 브라우저가 열리면:
    echo       1. Google 계정으로 로그인
    echo       2. [액세스 허용] 버튼 클릭
)
echo.
echo    ──────────────────────────────────────────────────
echo.

timeout /t 15 >nul
del "%TEMP%\gemini_setup.vbs" >nul 2>&1

echo.
echo    🎉 설정 완료!
echo.
echo    다음부터는 더블클릭만 하면 바로 실행됩니다.
echo.
call :LOG "Initial setup completed - Method: !LOGIN_METHOD!"
timeout /t 3 >nul
exit /b 0

REM ========== 이미 설정된 경우: 바로 실행 ==========
:ALREADY_CONFIGURED
echo [4/5] 설정 확인 완료
echo.
echo    ✓ 로그인 정보 저장됨
echo.

echo [5/5] Gemini CLI 실행 중...
echo.

cls
echo.
echo    ╔════════════════════════════════════════════════╗
echo    ║                                                ║
echo    ║           🤖 Gemini AI 대화 시작               ║
echo    ║                                                ║
echo    ╚════════════════════════════════════════════════╝
echo.
echo    💡 사용 예시:
echo       • 오늘 날씨 어때?
echo       • Python 코드 작성해줘
echo       • 영어 번역 도와줘
echo.
echo    🚪 종료: exit 입력 또는 Ctrl+C
echo.
echo    ──────────────────────────────────────────────────
echo.

call :LOG "Gemini CLI launched"

gemini

echo.
echo.
echo    ──────────────────────────────────────────────────
echo    대화를 종료했습니다. 또 만나요! 👋
echo    ──────────────────────────────────────────────────
echo.

call :LOG "Gemini CLI session ended"
timeout /t 3 >nul
goto :END

REM ============================================================
REM  함수: Gemini CLI 자동 설치
REM ============================================================
:INSTALL_GEMINI
echo    ! Gemini CLI가 설치되지 않았습니다.
echo.
echo    자동으로 설치하시겠습니까?
echo.

REM 입력 변수 초기화 (핵심!)
set "INSTALL="
set /p "INSTALL=선택 (y/n): "

if /i not "!INSTALL!"=="y" (
    echo.
    echo    설치를 취소했습니다.
    timeout /t 2 >nul
    exit /b 1
)

echo.
echo    📦 Gemini CLI 설치 중... (30초~1분 소요)
echo.

call npm install -g @google/gemini-cli

if errorlevel 1 (
    echo.
    echo    ❌ 설치 실패! 다음을 확인해주세요:
    echo       1. 인터넷 연결 상태
    echo       2. NPM 설정
    echo.
    echo    💡 수동 설치: npm install -g @google/gemini-cli
    echo.
    call :LOG "Installation failed"
    pause
    exit /b 1
)

echo.
echo    ✓ 설치 완료!
echo.
call :LOG "Gemini CLI installed successfully"
timeout /t 2 >nul
exit /b 0

REM ============================================================
REM  에러 처리 함수들
REM ============================================================

:ERROR_NODE_NOT_FOUND
cls
echo.
echo    ╔════════════════════════════════════════════════╗
echo    ║             ⚠️  Node.js 미설치                 ║
echo    ╚════════════════════════════════════════════════╝
echo.
echo    Gemini CLI를 사용하려면 Node.js가 필요합니다.
echo.
echo    📥 다운로드: https://nodejs.org/
echo       → 왼쪽 LTS 버전 (v20 이상) 설치
echo.
echo    설치 후 이 파일을 다시 실행해주세요.
echo.
call :LOG "ERROR: Node.js not found"
pause
exit /b 1

:ERROR_NODE_VERSION
echo.
echo    ⚠️  Node.js 버전이 낮습니다 (현재: %~1)
echo.
echo    v20 이상이 필요합니다.
echo    https://nodejs.org/ 에서 업데이트하세요.
echo.
call :LOG "ERROR: Node.js version too old (%~1)"
pause
exit /b 1

:ERROR_NPM_NOT_FOUND
echo.
echo    ❌ NPM을 찾을 수 없습니다.
echo.
echo    Node.js를 재설치하거나 환경변수(PATH)를 확인하세요.
echo.
call :LOG "ERROR: NPM not found"
pause
exit /b 1

:WARNING_NETWORK
echo    ⚠️  네트워크 연결 불안정
echo       (계속 진행하지만 설치 시 문제 발생 가능)
call :LOG "WARNING: Network connection issue"
exit /b 0

:WARNING_ALREADY_RUNNING
echo    ⚠️  Gemini CLI가 이미 실행 중일 수 있습니다.
echo.
call :LOG "WARNING: Possible duplicate process"
exit /b 0

REM ============================================================
REM  로그 기록 함수
REM ============================================================
:LOG
echo [%date% %time%] %~1 >> "%LOG_FILE%"
exit /b 0

REM ============================================================
REM  종료
REM ============================================================
:END
endlocal
exit /b 0