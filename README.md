# yt for Windows
  
**`https://github.com/RellikJaeger/yt/tree/Windows`  
yt for Windows is just a YouTube video download script for Windows.**  
> This is a minimal script to download YouTube videos using Windows cmd without extra effort.  

### Tips
- Move `yt` file into "C:\Windows".  
- Run `yt` in different cmd sessions to download multiple videos in parallel.  
### Setup example for Windows  
- Copy and paste this into cmd.
```cmd
powershell -c "Set-ExecutionPolicy RemoteSigned -Scope CurrentUser; irm https://get.scoop.sh | iex; exit" && scoop install git sudo phantomjs && scoop bucket add extras && scoop install python ffmpeg busybox && cd %UserProfile% && rm -rf "./yt/" && git clone -b Windows https://github.com/RellikJaeger/yt && sudo cmd /c move /y ".\yt\yt.bat" "%SystemRoot%\" && rm -rf "./yt/" && start /i cmd /k "python -m pip install --upgrade --force-reinstall yt-dlp && echo. && cls && yt -v && yt -h" && exit
```

### Available commands
| Commands         | Alias                         | Description
|------------------|-------------------------------|-----------------------------------
| `yt <url>`       | `1080 <url>`                  | Download best mp4 (1080p to lower)
| `yt 1080 <url>`  |                               | Download 1080p mp4
| `yt 720 <url>`   |                               | Download 720p mp4
| `yt 480 <url>`   |                               | Download 480p mp4
| `yt 360 <url>`   |                               | Download 360p mp4
| `yt mp3 <url>`   |                               | Download best mp3
| `yt help`        | `-h`, `--help`                | To see this help page
| `yt version`     | `-v`, `-version`, `--version` | Check yt version
| `yt upgrade`     | `-u`, `up`                    | Upgrade yt (self-reinstallation)

<br><br>
### IMPORTANT: `&` and `;` are not allowed in cmd arguments! Check your YouTube URLs before pressing `Enter`.
### Tips
- Use shortern URLs or remove unnecessary parameter parts from URLs
- Use URL encoding for special characters (example online URL encoder: https://urlencoder.org)
### Usage example
- Copy and paste this into cmd.
```cmd
yt https://youtu.be/LxC0kD-GuBQ
```
#### Series download feature is removed in this Windows version for multiple reasons!
### Output file path
- You can find the downloaded video file in the "Downloads\Video" folder:
```
C:\Users\<Username>\Downloads\Video\
```
#### Example downloaded video file path:
```
C:\Users\<Username>\Downloads\Video\Video Name.mp4
```
