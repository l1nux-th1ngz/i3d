#!/bin/bash

# Create directory for logout script
mkdir -p ~/.config/i3/bin/

# Create logout script
cat > ~/.config/i3/bin/logout << 'EOL'
#!/usr/bin/env bash
# Manage logout with rofi
option=$(echo -e "suspend\nlock screen\nlogout\nreboot\npoweroff\nKill user $USER" | rofi -width 600 -dmenu -p system)
case $option in
    suspend)
        sudo systemctl suspend
        ;;
    'lock screen')
        i3lock -i ~/Pictures/linuxtux.png
        ;;
    logout)
        i3-nagbar -t warning -m 'Are you sure you want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'
        ;;
    reboot)
        sudo systemctl reboot
        ;;
    poweroff)
        sudo systemctl poweroff
        ;;
    'Kill user $USER')
        loginctl kill-user $USER
        ;;
    *)
        echo "Invalid option selected."
        ;;
esac
EOL

# Change permissions of logout script
chmod +x ~/.config/i3/bin/logout

# Move folders
# Move sxhkd folder to ~/.config
if [ -d "$HOME/sxhkd" ]; then
    mv "$HOME/sxhkd" "$HOME/.config/"
fi

# Move autostart to ~/.config/i3/
if [ -f "$HOME/autostart" ]; then
    mv "$HOME/autostart" "$HOME/.config/i3/"
fi

# Move config to ~/.config/i3/
if [ -f "$HOME/config" ]; then
    mv "$HOME/config" "$HOME/.config/i3/"
fi

# Move workspaces to ~/.config/i3/
if [ -f "$HOME/workspaces" ]; then
    mv "$HOME/workspaces" "$HOME/.config/i3/"
fi

# Move Wallpapers to $HOME
if [ -d "$HOME/Wallpapers" ]; then
    mv "$HOME/Wallpapers" "$HOME/"
fi

# Inform user about script execution completion
echo "################################################################"
echo "###################    Script Created ##########################"
echo "###################    Folders Moved  ##########################"
echo "################################################################"
