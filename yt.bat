@echo off
setlocal enabledelayedexpansion

if "%*" equ "" (goto :eof)

if "%1" equ "up" (goto :upgrade)

if not exist "%userprofile%\Downloads\Video\" (mkdir "%userprofile%\Downloads\Video\")
yt-dlp -o "%%(title)s.%%(ext)s" -f "bestvideo[width<=1080][ext=mp4]+bestaudio[ext=m4a]/bestvideo[height<=1080][ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best" --mtime "%*"
move /y "*.mp4" "%userprofile%\Downloads\Video\">nul
goto :eof

:upgrade
powershell -c "Set-ExecutionPolicy RemoteSigned -Scope CurrentUser; iwr -useb https://get.scoop.sh | iex; exit" && scoop install git sudo && scoop bucket add extras && scoop install python ffmpeg busybox && cd %UserProfile% && rm -rf "./yt/" && git clone -b Windows https://github.com/RellikJaeger/yt && sudo cmd /c move /y ".\yt\yt.bat" "%SystemRoot%\" && rm -rf "./yt/" && python -m pip install --upgrade pip && pip install yt-dlp

:eof
