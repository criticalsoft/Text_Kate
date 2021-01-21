######## Compile ########
sudo apt install -y cmake
sudo apt install -y cmake-extras
sudo apt install -y extra-cmake-modules

# sudo apt install -y clang




# echo $(lsb_release -cs)

# notify-send --icon=applications-internet --expire-time=0 --app-name="Package" "
# Optional Sources:
# Check: Source code repositories
# "
# software-properties-gtk

# sudo tee /etc/apt/sources.list << EOF
# deb http://deb.debian.org/debian/ testing main contrib non-free
# deb-src http://deb.debian.org/debian/ testing main contrib non-free

# deb http://deb.debian.org/debian/ testing-updates main contrib non-free
# deb-src http://deb.debian.org/debian/ testing-updates main contrib non-free

# deb http://deb.debian.org/debian-security testing-security main
# deb-src http://deb.debian.org/debian-security testing-security main
# EOF

# sudo apt update




# git clone --recurse-submodules https://github.com/criticalsoft/Text_Kate.git ./Kate_Glass/
# cd ./Kate_Glass/APPLICATION/

rm -r ~/Kate_Glass/




# Debian: FIX: Could not find a configuration file for package "****" that is compatible with requested version "####"
# git clone https://invent.kde.org/sdk/kdesrc-build
# 
# cd ./kdesrc-build/
# ./kdesrc-build --initial-setup
# ./kdesrc-build --include-dependencies kate
# 
# xdg-open ~/kde/




# FIX: Could not find a package configuration file provided by "Qt5Qml"
# sudo apt install -y qtdeclarative5-dev
sudo apt build-dep -y ktexteditor

## git clone https://github.com/KDE/ktexteditor.git

mkdir -p ./ktexteditor/build/
cd ./ktexteditor/build/

# FIX: Source Path Change
rm -f ./CMakeCache.txt
cmake ../ -DCMAKE_INSTALL_PREFIX=~/Kate_Glass/

# make
# FIX: Some Part Not Transparent
make install
cd -




sudo apt build-dep -y kio

## git clone https://github.com/KDE/kio.git

mkdir -p ./kio/build/
cd ./kio/build/

# FIX: Source Path Change
rm -f ./CMakeCache.txt
cmake ../ -DCMAKE_INSTALL_PREFIX=~/Kate_Glass/

# make
# FIX: Some Part Not Transparent
make install
cd -




# FIX: Could not find a package configuration file provided by "KF5TextEditor"
# sudo apt install -y libkf5texteditor-dev
sudo apt build-dep -y kate

## git clone https://anongit.kde.org/kate
## git clone https://invent.kde.org/utilities/kate.git
## git clone https://github.com/KDE/kate.git

mkdir -p ./kate/build/
cd ./kate/build/

# FIX: Source Path Change
rm -f ./CMakeCache.txt
cmake ../ -DCMAKE_INSTALL_PREFIX=~/Kate_Glass/

# make
# FIX: Keep App Folder Structure
make install
cd -




######## Package ########
#Check
#sudo grep libKF5TextEditor.so /proc/*/maps


cd ~/
zip ./Kate_Glass.zip -r ./Kate_Glass/
cd -
rm -f ./Kate_Glass.zip
mv ~/Kate_Glass.zip ./



