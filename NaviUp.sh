
#!/bin/bash

arr=(/home/miaow/Wallpaper/*)

numfiles=${#arr[@]}

value=$(<BGIndex.txt)
BGIndex.txt>&-
echo "Value: $value"

echo $(($(($numfiles + $(($value - 5)))) % $numfiles)) > BGIndex.txt
value=$(($(($numfiles + $(($value - 5)))) % $numfiles));



PIC="${arr[$value]}"
gsettings set org.gnome.desktop.background picture-uri "file://$PIC"

