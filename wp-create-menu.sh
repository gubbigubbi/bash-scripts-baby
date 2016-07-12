#!/bin/bash
IFS=","
echo "Please enter the menu name"
read menuname
wp menu create $menuname
echo "Menu created, please enter the items to add by menu by ID"
read pagenames
arr=($pagenames)
for i in "${!arr[@]}"; do
wp menu item add-post $menuname ${arr[$i]} 
done
unset IFS
echo "Enter the menu location"
read menulocation
wp menu location assign $menuname $menulocation
echo "Finished :)"
