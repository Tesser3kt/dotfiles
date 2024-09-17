#! /bin/bash

echo "This script will backup and overwrite your current Alacritty, zshrc, zathura and Hyprland configs."
echo -n "Proceed? y/n: "
read -r proceed

if [ $proceed = "y" ]; then
    for folder in "alacritty" "zshrc" "hypr" "zathura"
    do
        # Make backups
        mv $HOME/.config/${folder} $HOME/.config/${folder}.bak
        # Create symbolic links
        ln -s $PWD/${folder} $HOME/.config/${folder}
    done
    echo "Your kernel files were successfully deleted."
fi
exit 0
