### MYPKGS
the reason i made this is because i get bored everytime when i have to remember and write my packages whenever i reinstall arch in my pc or on others pc's, so i just had an idea to save time and create a script that installs initiall packages like pipewire and bluez and other packages that i use daily. the packages contain official ones and packages from the AUR, so you could skip it if you want

this is my first proper repo and script so there might be errors.
will update the packages every week

# How to install?
just paste this in your terminal 
```bash
sudo pacman -S --needed base-devel git && git clone https://github.com/whxbi/myarchpkgs.git && cd ~/myarchpkgs && ./install.sh
```
