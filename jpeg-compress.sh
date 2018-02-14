#!/bin/bash          
# prompt for size (width)
echo "quality level"
read QUALITY
sudo jpegoptim -m $QUALITY *.jpg *.JPG *.jpeg
