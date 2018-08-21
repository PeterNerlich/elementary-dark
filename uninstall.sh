#!/bin/sh

rm -rf /usr/share/themes/elementary-dark &&
sudo -u "$USER" -H gsettings set org.gnome.desktop.interface gtk-theme 'elementary' &&
echo "\nSuccess! The dark theme was deleted and the original applied, so you should have seen your windows adjusting just now. If not, change GTK+ back to elementary in Tweaks or execute\n  gsettings set org.gnome.desktop.interface gtk-theme 'elementary'" ||

echo "\nSomething went wrong. Maybe you did not try with sudo?"
