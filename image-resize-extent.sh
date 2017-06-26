#!/bin/bash          
# prompt for size (width)
echo "please enter the width of the images"
read WIDTH
fileWidth=$WIDTH
fileWidthX=$fileWidth"x"
read HEIGHT
fileHeight=$HEIGHT
fileHeightX=$fileHeight"x"
#fileWidth=x
echo $fileWidthX
echo $fileHeightX
#echo "please enter the filetype"
#read FILETYPE
sudo mkdir "resized"
echo "setting up directory"
echo "resizing"
#also look for .JPG extensions too!
sudo mogrify -resize $fileWidthX -path resized *.jpg *.JPG
sudo mogrify -extent $fileWidthX $fileHeightX -gravity Center -fill white *.jpg
