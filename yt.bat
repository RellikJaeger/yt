@echo off
setlocal enabledelayedexpansion

set yt_version=version: v0.2.5, date: 2023/07/30 (Sun^)

title yt for Windows !yt_version!

if "%*" equ "" (goto :eof)

if "%1" equ "-h" (goto :help)
if "%1" equ "--help" (goto :help)
if "%1" equ "help" (goto :help)
if "%1" equ "-v" (goto :version)
if "%1" equ "version" (goto :version)
if "%1" equ "-version" (goto :version)
if "%1" equ "--version" (goto :version)
if "%1" equ "-u" (goto :upgrade)
if "%1" equ "up" (goto :upgrade)
if "%1" equ "upgrade" (goto :upgrade)
if "%1" equ "720" (goto :p720)
if "%1" equ "480" (goto :p480)
if "%1" equ "360" (goto :p360)
if "%1" equ "240" (goto :p240)
if "%1" equ "144" (goto :p144)
if "%1" equ "mp3" (goto :mp3)

set URLs=%*
if not exist "%userprofile%\Downloads\Video\" (mkdir "%userprofile%\Downloads\Video\")
pushd "%userprofile%\Downloads\Video\"
yt-dlp -o "%%(title)s.%%(ext)s" -f "137+140/299+140/bestvideo[width<=1920][height<=1920][ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best" --no-mtime "!URLs!"
popd
goto :eof

:version
title yt for Windows !yt_version!
echo.
echo   yt !yt_version!
goto :eof

:help
echo.
echo ----------------+-------------------------+-----------------------------------
echo  Commands       ^| Alias                   ^| Description
echo ----------------+-------------------------+-----------------------------------
echo  yt ^<url^>       ^| 1080 ^<url^>              ^| Download best mp4 (1080p to lower^)
echo  yt 1080 ^<url^>  ^|                         ^| Download 1080p mp4
echo  yt 720 ^<url^>   ^|                         ^| Download 720p mp4
echo  yt 480 ^<url^>   ^|                         ^| Download 480p mp4
echo  yt 360 ^<url^>   ^|                         ^| Download 360p mp4
echo  yt mp3 ^<url^>   ^|                         ^| Download best mp3
echo  yt help        ^| -h, --help              ^| To see this help page
echo  yt version     ^| -v, -version, --version ^| Check yt version
echo  yt upgrade     ^| -u, up                  ^| Upgrade yt (self-reinstallation^)
echo ----------------+-------------------------+-----------------------------------
goto :eof

:p1080
for /f "tokens=1,* delims= " %%a in ("%*") do set URLs=%%b
if not exist "%userprofile%\Downloads\Video\" (mkdir "%userprofile%\Downloads\Video\")
pushd "%userprofile%\Downloads\Video\"
yt-dlp -o "%%(title)s.%%(ext)s" -f "137+140/299+140/bestvideo[width<=1920][height<=1920][ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best" --no-mtime "!URLs!"
popd
goto :eof

:p720
for /f "tokens=1,* delims= " %%a in ("%*") do set URLs=%%b
if not exist "%userprofile%\Downloads\Video\" (mkdir "%userprofile%\Downloads\Video\")
pushd "%userprofile%\Downloads\Video\"
yt-dlp -o "%%(title)s.%%(ext)s" -f "22/best[ext=mp4]/best" --no-mtime "!URLs!"
popd
goto :eof

:p480
for /f "tokens=1,* delims= " %%a in ("%*") do set URLs=%%b
if not exist "%userprofile%\Downloads\Video\" (mkdir "%userprofile%\Downloads\Video\")
pushd "%userprofile%\Downloads\Video\"
yt-dlp -o "%%(title)s.%%(ext)s" -f "397+140/135+140/bestvideo[width<=854][height<=854][ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best" --no-mtime "!URLs!"
popd
goto :eof

:p360
for /f "tokens=1,* delims= " %%a in ("%*") do set URLs=%%b
if not exist "%userprofile%\Downloads\Video\" (mkdir "%userprofile%\Downloads\Video\")
pushd "%userprofile%\Downloads\Video\"
yt-dlp -o "%%(title)s.%%(ext)s" -f "134+140/18/best[ext=mp4]/best" --no-mtime "!URLs!"
popd
goto :eof

:p240
echo 240p is not implemented.
goto :eof

:p144
echo 144p is not implemented.
goto :eof

:mp3
for /f "tokens=1,* delims= " %%a in ("%*") do set URLs=%%b
if not exist "%userprofile%\Downloads\Music\" (mkdir "%userprofile%\Downloads\Music\")
pushd "%userprofile%\Downloads\Music\"
yt-dlp --extract-audio --audio-format mp3 -o "%%(title)s.%%(ext)s" -f "bestaudio[ext=m4a]/bestaudio" --no-mtime "!URLs!"
popd
goto :eof

:move_error
echo An error occurred while moving the downloaded file.
echo Please check inside the "%userprofile%" folder.
goto :eof

:upgrade
powershell -c "Set-ExecutionPolicy RemoteSigned -Scope CurrentUser; irm https://get.scoop.sh | iex; exit" && scoop install git sudo phantomjs && scoop bucket add extras && scoop install python ffmpeg busybox && cd %UserProfile% && rm -rf "./yt/" && git clone -b Windows https://github.com/RellikJaeger/yt && sudo cmd /c move /y ".\yt\yt.bat" "%SystemRoot%\" && rm -rf "./yt/" && start /i cmd /k "python -m pip install --upgrade --force-reinstall yt-dlp && echo. && cls && yt -v && yt -h" && exit
goto :eof

:eof
