rm -rf ./slot*/
mkdir -p ./slot1/
mkdir -p ./slot2/
mkdir -p ./slot3/




#Configure
#General
#Colors & Font (kateschemarc)
#Schema (katesyntaxhighlightingrc)
cp -r ~/.config/kate*rc ./slot1/


#Toolbar & Shortcut
cp -r ~/.local/share/kxmlgui5/kate/ ./slot2/


#User Profile
#Plugin Setting
cp -r ~/.local/share/kate/ ./slot3/




#rm -r ./CONFIG_$(date +"%Y%m%d")/
#cp -r ./CONFIG/ ./CONFIG_$(date +"%Y%m%d")/




sync
echo SYNC




