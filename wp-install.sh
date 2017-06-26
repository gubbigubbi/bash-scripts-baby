#!/bin/bash
IFS=","
echo "Please enter the site name"
read sitename
echo "Please enter the site slug"
read slug

echo $slug
echo "Please enter the WP description"
read description
wp-cli core download
wp-cli core config --dbuser=root --dbpass=root --dbname=$slug
#wp-cli db create
wp-cli core install --url=$slug.local --title=$slug --admin_user=admin --admin_password=admin --admin_email=installs@theitteam.com.au
wp-cli option update blogdescription $description
echo "WP ready, removing default plugins and themes"
wp-cli plugin delete hello
wp-cli theme delete twentyfourteen twentythirteen twentyfifteen
echo "Setting up permalinks now..."
wp-cli option update permalink_structure ""
wp-cli rewrite structure '/%postname%/' --hard
echo "Setup :)"
