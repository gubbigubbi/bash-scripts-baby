read -p "Do you want to convert uppercase to lowercase? (Y/N)?" choice
case "$choice" in 
  y|Y ) rename 'y/A-Z/a-z/' *;;
  n|N ) echo "ok moving onto the next step";;
  * ) echo "invalid";;
esac
echo "removing spaces"
rename 's/ /-/g' *
