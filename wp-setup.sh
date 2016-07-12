#!/bin/bash
IFS=","
echo "Please enter the site name"
read sitename
slug=${sitename,,}
str=${slug// /}
echo $str
echo "Please enter the WP description"
read description
wp core download
wp core config --dbuser=root --dbpass=root --dbname=$str
wp db create
wp core install --url=$str.local --title=$sitename --admin_user=admin --admin_password=admin --admin_email=rhys@theitman.net.au
wp option update blogdescription $description
echo "WP ready, removing default plugins and themes"
wp plugin delete hello
wp theme delete twentyfourteen twentythirteen
echo "Setting up permalinks now..."
wp option update permalink_structure ""
wp rewrite structure '/%postname%/' --hard
echo "Setup :)"
