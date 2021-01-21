######## Dependence ########
#Transparent Application Theme (Kvantum Manager)
#Blur Desktop Effect (KDE Plasma)
#xdg-open "https://github.com/criticalsoft/Theme_QT"




######## Install ########
sudo apt install -y kate
# sudo apt purge kate




rm -r ~/Kate_Glass/
unzip ./Kate_Glass.zip -d ~/


mkdir -p ~/.local/bin/
#ReLogIn
rm ~/.local/bin/kate
tee ~/.local/bin/kate << EOF
#./build/prefix.sh
XDG_DATA_DIRS=\$XDG_DATA_DIRS:\$HOME/Kate_Glass/share/ LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:\$HOME/Kate_Glass/ \$HOME/Kate_Glass/bin/kate --new %U
EOF
chmod +x ~/.local/bin/kate
whereis kate




mkdir -p ~/.local/share/applications/
tee ~/.local/share/applications/org.kde.kate.desktop << EOF
[Desktop Entry]
Name=Kate Glass
GenericName=Text Editor
Exec=XDG_DATA_DIRS=\$XDG_DATA_DIRS:\$HOME/Kate_Glass/share/ LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:\$HOME/Kate_Glass/ \$HOME/Kate_Glass/bin/kate --new %U
Type=Application
Icon=kate
Categories=Utility;TextEditor;
MimeType=text/plain;
EOF




#LSP PlugIn DEP
sudo apt install -y clangd



