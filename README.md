# elementary dark (gtk-2.0)

This is the [standard gtk 2.0 theme from elementary](https://github.com/elementary/stylesheet), but with the colors changed to closely resemble the difference between the light and dark variants of the GTK 3 theme. If you prefer to use the dark theme all the way (like me), this is now you tame your GTK 2 applications without using a separate theme that looks different from the dark GTK 3 version.

> Please be aware that this only acts as a proxy-theme, containing the patched dark gtk2.0 theme and otherwise just linking to [/usr/share/themes/elementary](https://github.com/elementary/stylesheet) — so you need to have that installed as well, else your GTK3 apps will look wrong.

![dark variant](https://i.imgur.com/flVjbZp.jpg)

Default for comparison:
![default variant (light gtk2 apps)](https://i.imgur.com/5PnOsPA.jpg)

## Installing

Just run the `install.sh` script with `sudo`. As always, don't just blindly execute anything you download from the internet, *especially* not with `sudo` — so I made this as simple and compact as possible. There is not much to do.

I tried to automatically make the theme switch, but only got some inconsistent results. If nothing happens, change GTK+ to elementary-dark in Tweaks or execute

	gsettings set org.gnome.desktop.interface gtk-theme 'elementary-dark'

You don't need to remember though, the script will tell you :)

## Uninstalling

As easy as installing: just run `uninstall.sh` with `sudo`.

If the theme doesn't switch, change GTK+ back to elementary in Tweaks or execute

	gsettings set org.gnome.desktop.interface gtk-theme 'elementary'
