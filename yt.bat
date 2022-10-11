@echo off
setlocal enabledelayedexpansion
if "%*" equ "" (goto :eof)
if not exist "%userprofile%\Downloads\Video\" (mkdir "%userprofile%\Downloads\Video\")
yt-dlp -o "%%(title)s.%%(ext)s" -f "bestvideo[width<=1080][ext=mp4]+bestaudio[ext=m4a]/bestvideo[height<=1080][ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best" --mtime "%*"
move /y "*.mp4" "%userprofile%\Downloads\Video\">nul
:eof
