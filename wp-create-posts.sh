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
echo "Finished setting up posts, now what page do you want as the front page - enter the id :)"
read frontpage
wp option update page_on_front $frontpage
echo "Done, now what page do you want for the posts? enter id again"
read blogpage
wp option update page_for_posts $blogpage
wp option update show_on_front page
echo "Finished"
