echo "renaming all files to lower case"
rename 'y/A-Z/a-z/' *
echo "removing spaces"
rename 's/ /-/g' *
