# Tartersauce

A simple package installer for Arch Linux tar packages that utilizes zenity to give a more user friendly installer for packages. Made in one afternoon with some help from Google.

<img width="63" height="123" alt="tartersauce" src="https://github.com/user-attachments/assets/6904c299-3374-4dd7-9c3c-a3a13d762f5f" />

# Install Guide

First, make sure you have both git and base_devel installed:

```
sudo pacman -Syu git base-devel --needed
```

Then run the following command in your terminal:

```
git clone https://github.com/ThatOneAmericanSpy/Tartersauce.git
cd Tartersauce
makepkg -si
```

Now anytime you double click a pkg.tar.zst file Tartersauce's GUI should prompt you to install the package. Currently uninstalling is not available for Tartersauce but may eventually be added.
