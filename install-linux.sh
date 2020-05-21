#!/bin/bash
clear
cd ~
cd /usr/share/
echo "Searching for old versions..."
sudo rm Facebookk-linux-x64.zip

echo "Downloading Facebookk..."
sudo wget --quiet "https://github.com/KorbsStudio/Facebookk/releases/download/v0.02/Facebookk-linux-x64.zip"

echo "Extacting..."
sudo unzip -q Facebookk-linux-x64.zip

sudo mv Facebookk-linux-x64 facebookk-linux

cd facebookk-linux
sudo mv Facebookk facebookk
echo "Downloading icon"
sudo wget --quiet "https://github.com/Korbs-Studio-Server/korbs-studio/raw/master/download/facebookk/icon.png"

echo "Adding Facebookk to applications menu..."
cd ~
cd /usr/share/applications/
sudo wget --quiet "http://korbsstudio.com/download/Facebookk.desktop"

cd ~
sudo chmod -R 777 /usr/share/facebookk-linux/











echo "Downloading Messenger..."
sudo wget --quiet "https://github.com/KorbsStudio/Messenger/releases/download/v0.02/Messenger-linux-x64.zip"

echo "Extacting..."
sudo unzip -q Messenger-linux-x64.zip

sudo mv Messenger-linux-x64 messenger-linux

cd messenger-linux
sudo mv Messenger messenger
echo "Downloading icon"
sudo wget --quiet "https://github.com/Korbs-Studio-Server/korbs-studio/raw/master/download/ms.png"

echo "Adding Messenger to applications menu..."
cd ~
cd /usr/share/applications/
sudo wget --quiet "http://korbsstudio.com/download/Messenger.desktop"

cd ~
sudo chmod -R 777 /usr/share/messenger-linux/













echo "Done."

echo "Cleaning up..."
sudo rm /usr/share/Facebookk-linux-x64.zip
sudo rm /usr/share/Messenger-linux-x64.zip
