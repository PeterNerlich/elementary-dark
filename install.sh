#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
cd $DIR

mkdir /usr/share/themes/elementary-dark &&
cp -r ./* /usr/share/themes/elementary-dark &&
ln -s /usr/share/themes/elementary/gtk-3.0 /usr/share/themes/elementary-dark/gtk-3.0 &&
ln -s /usr/share/themes/elementary/gtk-3.22 /usr/share/themes/elementary-dark/gtk-3.22 &&
ln -s /usr/share/themes/elementary/plank /usr/share/themes/elementary-dark/plank &&
sudo -u "$USER" -H gsettings set org.gnome.desktop.interface gtk-theme 'elementary-dark' &&
echo "\nSuccess! The dark theme is installed and applied, so you should have seen your windows adjusting just now. If not, change GTK+ to elementary-dark in Tweaks or execute\n  gsettings set org.gnome.desktop.interface gtk-theme 'elementary-dark'" ||

echo "\nSomething went wrong. Maybe you did not try with sudo? Just to be safe, if the theme is already installed, please run uninstall.sh first!"

echo "\nPlease be aware that this only acts as a proxy-theme, containing the patched dark gtk2.0 theme and otherwise just linking to /usr/share/themes/elementary — so you need to have that installed as well, else your GTK3 apps will look wrong."
