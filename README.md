# Arch Linux Configuration

## Dotfiles

- Window manager: `.config/i3/`
- Status bar: `.config/polybar/`
- File manager: `.config/lf/`
- `.gitconfig`
  - proxy
  - user info
- `.Xresources`
  - HiDPI
  - cursor theme & size
- `.xinitrc`: launch i3
  - HiDPI
  - fcitx
  - mouse & trackpad speed
  - autorandr
- `.config/autorandr/`: multiple displays
- `.config/gtk-3.0/` & `.config/gtk-4.0/`
  - cursor theme & size
- `.config/dunst/`: notification
- `.config/chromium-flags.conf`
  - proxy
- `.config/logind.conf` -> `/etc/systemd/logind.conf`: systemd logind
  - powerkey action
- `.config/picom.conf`: compositor
- `.ssh/config/`
  - ssh via proxy

## Packages

### System

- AUR helper: `yay`
- Task manager: `htop`
- GPU usage: `nvtop`
- Network: `networkmanager`
  - GUI: `network-manager-applet`
  - Firewall: `ufw` (https://github.com/chaifeng/ufw-docker)
  - Connection network usage: `iftop`
  - Process network usage: `nethogs`
  - Exploration: `nmap`
  - VPN: `openconnect`, `openvpn`, `wireguard-tools`
  - Packets: `wireshark-qt`
- Bluetooth: `blueman` & `bluez-utils`
- Audio: `pipewire-alsa`, `pipewire-pulse`
  - GUI: `pavucontrol`
- Docker container viewer: `lazydocker`
- Disk:
  - Disk usage: `ncdu`
  - Partitioning tool: `gparted`
  - NTFS mounting: `ntfs-3g`
- System overview: `neofetch`
- Fonts
  - `noto-fonts-cjk`, `noto-fonts-extra`
  - Emoji: `noto-fonts-emoji`, `otf-openmoji`
  - `ttf-nerd-fonts-symbols-2048-em-mono`
- Container: `docker` & `docker-compose` & `docker-buildx`
- Backup: `timeshift`
- Samba (SMB): `cifs-utils`

- AMDGPU: `mesa`, `lib32-mesa`, `xf86-video-amdgpu`, `vulkan-radeon`, `lib32-vulkan-radeon`, `mesa-vdpau`, `lib32-mesa-vdpau`

- Display server: `xorg`
- Window manager: `i3-wm`
- Status bar: `polybar`
- Launcher: `rofi`
- Screen locker: `i3lock`, `xss-lock`
- Compositor: `picom`
- Clipboard manager: `copyq`
  - save image to file:
    ```sh
    copyq read image/png 0 > img.png
    ```
  - `xclip` (for nvim system clipboard to work properly)
- Input method: `fcitx5-im` & `fcitx5-chinese-addons` & `fcitx5-pinyin-zhwiki` (words library) & `fcitx5-nord` (theme)
- Notification: `libnotify`, `dunst`
- Default application: `selectdefaultapplication-git`
- Theme: `lxappearance-gtk3`
- Screenshot: `maim`
- Multiple screens handling: `autorandr`
- DDC manager: `ddcutil`

- Terminal: `alacritty`
- Shell: `fish`, `tmux`
- File manager: `lf`, `thunar`
  - previewing: `ctpv`
    - image: `ueberzug`
  - archiving: `atool`
    - `zip`, `unzip`, `unrar`, `p7zip`
- Text editor: `neovim`

### Productivity

- Email: `thunderbird` & `birdtray`
- Browser: `chromium`, `firefox`
- Text editor: `code`
- Office: `wps-office-cn`, `wps-office-mui-zh-cn`, `ttf-wps-fonts`
- Communication: `wechat-uos`, `wemeet-bin`
- Bibliography manager: `zotero-bin`

### Multimedia

- Player: `vlc`
- Image editor: `gimp`
- Audio editor: `audacity`
- Video editor: `kdenlive`
- Sreen recording: `obs-studio`
