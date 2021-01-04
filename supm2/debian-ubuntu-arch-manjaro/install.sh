#!/bin/sh
echo Downloading...
wget https://github.com/scratcher-402/supm/raw/main/supm2/files/duam/supm https://github.com/scratcher-402/supm/raw/main/supm2/files/duam/dis
echo "1) install dependences with apt-get (debian,ubuntu)
2) install dependences with pacman (Arch, manjaro)
3) do not install dependences"
read a
case $a in
1)
apt-get update
apt-get -y install bash
apt-get -y install make
apt-get -y install build-essential
apt-get -y install shc
apt-get -y install zenity
;;

2)
pacman -S bash
pacman -S make
pacman -S shc
pacman -S zenity
;;

esac
Installing...
mkdir /usr/share
mkdir /usr/share/supm
mkdir /usr/share/supm/pkgs
cp supm /usr/bin/supm
rm supm
chmod 777 /usr/bin/supm
cp dis /usr/bin/dis
rm dis
chmod 777 /usr/bin/dis
echo https://github.com/scratcher-402/supm-offical-repo/raw/main/ > /usr/share/supm/repo.dis
echo Done!





