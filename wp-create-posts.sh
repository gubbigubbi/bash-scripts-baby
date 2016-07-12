#!/bin/bash
IFS=","
echo "What would you like to make today? posts or pages etc"
read posttype
echo "Please enter the page names to be created, seperated by a comma"
read pagenames
arr=($pagenames)
for i in "${!arr[@]}"; do
wp post create --post_type=$posttype --post_title="${arr[$i]}" --post_status=publish
done
unset IFS
echo "Finished :)"
