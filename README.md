# yt
**`yt` is just a YouTube video download script for Windows.**  
> Video quality is automatically selected from the best quality starting at 1080p to lower.  
This is a minimal script to download YouTube videos using Termux without extra effort.  
There are currently no other options to choose quality.  

### Tips
- Move `yt` file into "C:\Windows\".  
- Run `yt` in different cmd sessions to download multiple videos in parallel.  
### Setup example for Windows  
- Copy and paste this into cmd.
```cmd
powershell
```
```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
iwr -useb https://get.scoop.sh | iex
exit
```
```cmd
exit
```
- Open new cmd and paste this
```cmd
scoop install git sudo && scoop bucket add extras && scoop install python ffmpeg && python -m pip install --upgrade pip && pip install yt-dlp && git clone -b Windows https://github.com/RellikJaeger/yt && cd yt && sudo move yt.bat "%SystemRoot%" && cd .. && del /f /q /s "yt\*" && rmdir /q /s yt
```
# IMPORTANT: & ; ARE NOT ALLOWED IN CMD ARGUMENTS!!!
### Usage example
- Copy and paste this into cmd.
```cmd
yt https://youtu.be/LxC0kD-GuBQ
```
### You can also download multiple videos in series (one by one)
- Copy and paste this into cmd.
```bash
yt https://youtu.be/X5e2GrxQGlA https://youtu.be/Pj7H6j9lvPI https://youtu.be/OosiksDo_OA
```
### Output file path
- You can find your downloaded video file in the "%UserProfile%\Downloads\Video\" folder.  
#### Example paths:
| "C:\Users\<Username>\Downloads\Video\Video Name.mp4"             |
> PS: Need to update some parts for general purpose.
