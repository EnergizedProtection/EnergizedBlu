#!/bin/bash
# Energized - ZIP Creator
# Energized Blu Android Flashable & Windows Bat Installer Creator
#
BLU=https://raw.githubusercontent.com/EnergizedProtection/EnergizedBlu/master/energized/blu
BLU_GO=https://raw.githubusercontent.com/EnergizedProtection/EnergizedBlu/master/energized/blu_go
 
wget -O assets/Android/system/etc/hosts $BLU
wget -O assets_go/Android/system/etc/hosts $BLU_GO
wget -O assets/Magisk/system/etc/hosts $BLU
wget -O assets_go/Magisk/system/etc/hosts $BLU_GO
wget -O assets/Windows/hosts $BLU
wget -O assets/Compressed/hosts $BLU
wget -O assets_go/Compressed/hosts $BLU_GO

cd assets/Android
zip -9 -r ../../energized/blu_android.zip .
cd ..
cd ../assets/Magisk
zip -9 -r ../../energized/blu_magisk.zip .
cd ..
cd ../assets/Windows
zip -9 -r ../../energized/blu_windows.zip .
cd ..
cd ../assets/Compressed
zip -9 -r ../../energized/blu.zip .
cd ..
cd ../assets_go/Android
zip -9 -r ../../energized/blu_go_android.zip .
cd ..
cd ../assets_go/Magisk
zip -9 -r ../../energized/blu_go_magisk.zip .
cd ..
cd ../assets_go/Compressed
zip -9 -r ../../energized/blu_go.zip .
cd ..