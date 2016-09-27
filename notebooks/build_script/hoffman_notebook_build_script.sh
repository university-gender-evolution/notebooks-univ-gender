#!/bin/bash


echo "Starting build script"

echo "Lets begin by getting the latest copy of the notebooks."

cd $HOME/notebooks-univ-gender/notebooks

git pull origin master

echo "Now lets get the latest copy of the python package."

cd $HOME/py-university-gender-dynamics-pkg/

git pull origin master

echo "Now lets reinstall the package with the latest version"

module load python/3.4

cd $HOME/py-university-gender-dynamics-pkg
python3 setup.py install --force --user 

echo "Now I will update the permissions on these directories to allow other users to access them"

chmod ug+rws /u/home/k/krishnab/notebooks-univ-gender
chmod ug+rws /u/home/k/krishnab/notebooks-univ-gender/notebooks
chmod ug+rws /u/home/k/krishnab/notebooks-univ-gender/notebooks/mgmt_notebook05092016.ipynb

echo "Tasks completed. Ready to go."


