#!/bin/bash


echo "Starting build script"

echo "Lets begin by getting the latest copy of the notebooks."

cd $HOME/notebooks_gender_univ/notebooks

git pull origin master

echo "Now lets get the latest copy of the python package."

cd $HOME/notebooks_gender_univ/py-university-gender-dynamics-pkg/

git pull origin master

echo "Now lets reinstall the package with the latest version"

module load python/3.4

python3 $HOME/notebooks_gender_univ/py-university-gender-dynamics-pkg/setup.py install --force --user 

echo "Now I will update the permissions on these directories to allow other users to access them"

chmod ug+rws /u/home/k/krishnab/notebooks_gender_univ
chmod ug+rws /