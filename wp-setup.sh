#!/bin/bash
IFS=","
echo "Please enter the site name"
read sitename
slug=${sitename,,}
echo $slug
wp core download
wp core config --dbuser=root --dbpass=root --dbname=$slug
wp db create
wp core install --url=$slug.local --title=$sitename --admin_user=admin --admin_password=admin --admin_email=rhys@theitman.net.au
echo "Setup :)"
