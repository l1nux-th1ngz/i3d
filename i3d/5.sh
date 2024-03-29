#!/bin/bash

# Update package lists
sudo apt update

# Install packages
sudo apt install -y \
autotools-dev cpp dex automake autoconf autoconf-archive automaken libtool \
pkgconf pkgconf-bin policykit-1-gnome pipenv devscripts \
xdg-desktop-portal xdg-desktop-portal-gtk xdg-utils seatd \
cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev \
libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev \
pkg-config python3-xcbgen xcb-proto libxcb-xrm-dev i3-wm libasound2-dev \
libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev python3-sphinx \
libxcb-composite0-dev libuv1-dev libuv1 libjsoncpp-dev \
cpio visualvm sudo adduser colord colord-data jq imagemagick \
init-system-helpers figlet ascii ranger xorg xbacklight xbindkeys \
xvkbd xinput xorg-dev python3-pip intel-microcode network-manager-gnome \
lxappearance dialog mtools dosfstools avahi-daemon acpi acpid gvfs \
gvfs-backends kitty terminator udisks2 udiskie xcb pulseaudio \
alsa-utils pavucontrol volumeicon-alsa neofetch htop btop lolcat \
exa duf bluez blueman numlockx rofi dunst libnotify-bin picom \
unzip geany zip libpam0g-dev libxcb-xkb-dev gdebi synaptic \
xcb cmake gcc libgtk-3-dev ninja-build libgtkmm-3.0-dev libxcb-randr0 \
libxcb-randr0-dev libxcb-util-dev libxcb-util0-dev libxcb-util1 \
libxcb-ewmh-dev libxcb-xinerama0 libxcb-xinerama0-dev libxcb-icccm4-dev \
libxcb-keysyms1-dev libxcb-cursor-dev libxcb-shape0-dev build-essential \
nala psmisc papirus-icon-theme fonts-noto-color-emoji \
zoxide software-properties-common wireplumber pipewire wireplumber \
pavucontrol dconf-editor rxvt-unicode vlc arandr autorandr duf feh \
font-manager hwinfo hw-probe lolcat most nitrogen nomacs numlockx \
picom ripgrep rofi sxhkd thunar-archive-plugin silversearcher-ag \
meson dh-autoreconf libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev \
xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev \
libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev \
libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev \
libxcb-shape0 libxcb-shape0-dev i3status apt-transport-https dirmngr \
gtk2-engines-murrine gtk2-engines vim ranger caca-utils highlight atool \
w3m poppler-utils mediainfo compton python-pip libcanberra-gtk-module \
fonts-font-awesome fonts-powerline fonts-ubuntu fonts-liberation2 \
fonts-liberation fonts-terminus fonts-cascadia-code numix-gtk-theme \
systemctl scrot maim ffmpeg qt5ct binutils binutils-common cmake-extras \
curl wget dh-exec dpkg dpkg-dev jp2a gum yad zenity whiptale pidcat \
thefuck lsd bash-completion dconf-editor clipit pulseaudio-utils \
alsa-tools clipit gcc locate playerctl brightnessctl plocate viewnior \
zathura cava xdot xdotool rxvt-unicode spotify-client mpd mpc mpv \

# U
sudo apt-get-upate

# Enable services
sudo systemctl enable avahi-daemon
sudo systemctl enable acpid
sudo systemctl enable bluetooth

# Enable WirePlumber audio service
if [ -n "$USER" ]; then
    sudo -u "$USER" systemctl --user enable wireplumber.service
else
    echo "Error: USER variable is not set."
fi


# Inform the user about installation completion
echo "################################################################"
echo "###################    Installation Done  ######################"
echo "################################################################"
