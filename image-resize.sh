#!/bin/bash          
# prompt for size (width)
echo "please enter the width of the images"
read WIDTH
fileWidth=$WIDTH
fileWidthX=$fileWidth"x"
#fileWidth=x
#echo $fileWidthX
#echo "please enter the filetype"
#read FILETYPE
sudo mkdir "resized"
echo "setting up directory"
echo "resizing"
#also look for .JPG extensions too!
sudo magick mogrify -format jpg -resize $fileWidthX -path resized *.jpeg *.jpg *.JPG *.tif *.png