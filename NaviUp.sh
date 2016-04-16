

#!/bin/bash

arr=(/home/miaow/Wallpaper/*)

value=$(<BGIndex.txt)
BGIndex.txt>&-
echo "Value: $value"

if (($value > 3)); then
    echo $(($value-4)) > BGIndex.txt
    value=$(($value-4));
fi



PIC="${arr[$value]}"
gsettings set org.gnome.desktop.background picture-uri "file://$PIC"
