# yt for macOS
  
**`https://github.com/RellikJaeger/yt/tree/macOS`  
yt for macOS is just a YouTube video download script for macOS.**  
> This is a minimal script to download YouTube videos using macOS Terminal without extra effort.  

### Tips
- Move `yt` file into `"$HOME/.local/bin"` or `"/usr/local/bin"`.  
- Run `yt` in different terminal sessions to download multiple videos in parallel.  
### Setup example for macOS  
- Copy and paste this into terminal.
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && eval "$(/opt/homebrew/bin/brew shellenv)" && brew install git phantomjs python ffmpeg && cd "$HOME" || exit && rm -rf "./yt/" && git clone -b macOS --depth 1 https://github.com/RellikJaeger/yt && mkdir -p "$HOME/.local/bin" && echo 'export PATH="$HOME/.local/bin":"$PATH"' >> "$HOME/.zshrc" && source "$HOME/.zshrc" && mv "./yt/yt" "$HOME/.local/bin/yt" && rm -rf "./yt/" && python -m pip install --upgrade --force-reinstall yt-dlp && echo "" && clear && yt -v && yt -h
```

### Available commands
| Commands          | Alias                         | Description                        |
| ----------------- | ----------------------------- | ---------------------------------- |
| `yt "<URL>"`      | `1080 "<URL>"`                | Download best mp4 (1080p to lower) |
| `yt 1080 "<URL>"` |                               | Download 1080p mp4                 |
| `yt 720 "<URL>"`  |                               | Download 720p mp4                  |
| `yt 480 "<URL>"`  |                               | Download 480p mp4                  |
| `yt 360 "<URL>"`  |                               | Download 360p mp4                  |
| `yt mp3 "<URL>"`  |                               | Download best mp3                  |
| `yt help`         | `-h`, `--help`                | To see this help page              |
| `yt version`      | `-v`, `-version`, `--version` | Check yt version                   |
| `yt upgrade`      | `-u`, `up`                    | Upgrade yt (self-reinstallation)   |

<br><br>
### IMPORTANT: You need to put the URLs in quotes `yt 720 "URL1" "URL2" "URL3"`! Check your YouTube URLs before pressing `Enter`.
### Tips
- You can also use 'single quotes'.

### Usage example
- Copy and paste this into the terminal:
```shell
yt "https://youtu.be/LxC0kD-GuBQ"
```

### Output file path
- You can find the downloaded video file in the "$HOME/Downloads/Video" directory:
```
/Users/<Username>/Downloads/Video/
```
#### Example downloaded video file path:
```
/Users/<Username>/Downloads/Video/Video Name.mp4
```
