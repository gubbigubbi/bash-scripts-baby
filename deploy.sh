#!/bin/bash          
echo "please enter the directory name"
read DNAME
echo "creating archive and compressing bra - excluding scss, sass and wp default themes"
tar -zcvf $DNAME-deploy.tar.gz $DNAME --exclude=*.scss --exclude "*sass" --exclude"*twenty*"
echo "all done!"

