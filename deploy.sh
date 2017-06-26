#!/bin/bash          
echo "please enter the directory name"
read DNAME
echo "creating archive and compressing bra - excluding scss, sass and wp default themes"
tar -zcvf $DNAME-deploy.tar.gz $DNAME --exclude=*.scss --exclude *sass --exclude *node_modules --exclude gulpfile.js --exclude package.json --exclude *.komodoproject --exclude *.scssc --exclude .sass-cache --exclude .sh --exclude *.*
echo "all done!"

