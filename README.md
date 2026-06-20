# yt
**`yt` is just a YouTube video download script for Termux.**  
> Video quality is automatically selected from the best quality starting at 1080p to lower.  
This is a minimal script to download YouTube videos using Termux without extra effort.  
There are currently no other options to choose quality.  

### Tips
- Move `yt` file into your preferred bin folder.  (Default location: `/data/data/com.termux/files/usr/bin/yt` aka `$PREFIX/bin/yt`)
- Run `yt` in different Termux sessions to download multiple videos in parallel.  
### Setup example for Termux  
- Copy and paste this into Termux.
```bash
yes | (termux-setup-storage && apt update && apt upgrade -y && pkg update && pkg install git python python-pip ffmpeg && apt install deno && python -m pip install --upgrade --force-reinstall yt-dlp && git clone -b Termux --depth 1 https://github.com/RellikJaeger/yt && chmod a+x yt/yt && mv yt/yt $PREFIX/bin && rm -rf yt && mkdir -p $HOME/bin && echo "bash yt \$*" > $HOME/bin/termux-url-opener && chmod a+x $HOME/bin/termux-url-opener) && rm -rf $HOME/bin/yt $HOME/.local/bin/yt && if ! grep -qxF "export PATH=\$HOME/bin:\$PATH" "$HOME/.bashrc"; then echo "export PATH=\$HOME/bin:\$PATH" >> $HOME/.bashrc; fi && source $HOME/.bashrc && clear && yt -v && yt -h
```
### Usage example
- Copy and paste this into Termux.
```bash
yt https://youtu.be/LxC0kD-GuBQ
```
### You can also download multiple videos in series (one by one)
- Copy and paste this into Termux.
```bash
yt https://youtu.be/X5e2GrxQGlA https://youtu.be/Pj7H6j9lvPI https://youtu.be/OosiksDo_OA
```
### Output file path
- You can find your downloaded video file in the internal storage "Download" folder.  
#### Example paths:
| "/sdcard/Download/Video Name.mp4"             |
| --- |
| "/storage/emulated/0/Download/Video Name.mp4" |
> PS: Need to update some parts for general purpose.
