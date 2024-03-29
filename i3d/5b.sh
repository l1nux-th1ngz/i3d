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
        systemctl suspend
        ;;
    'lock screen')
        i3lock -i $HOME/Wallpapers/1.png
        ;;
    logout)
        i3-nagbar -t warning -m 'Are you sure you want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'
        ;;
    reboot)
        systemctl reboot
        ;;
    poweroff)
        systemctl poweroff
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
mv "$HOME/sxhkd" "$HOME/.config/"
mv "$HOME/autostart" "$HOME/.config/i3/"
rm -rf "$HOME/.config/i3/config"
mv "$HOME/config" "$HOME/.config/i3/"
mv "$HOME/workspaces" "$HOME/.config/i3/"
mv "$HOME/Wallpapers" "$HOME/"

# Inform user about script execution completion
echo "################################################################"
echo "###################    Script Created ##########################"
echo "###################    Folders Moved  ##########################"
echo "################################################################"
