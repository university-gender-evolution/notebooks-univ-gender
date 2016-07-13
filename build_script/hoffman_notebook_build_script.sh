#!/bin/bash


echo "Starting build script"

echo "Lets begin by getting the latest copy of the notebooks."

cd notebooks_gender_univ/notebooks

git pull origin master

echo "Now lets get the latest copy of the python package."

cd notebooks_gender_univ/py-university-gender-dynamics-pkg/

git pull origin master

echo "Now lets reinstall the package with the latest version"

load module python/3.4

python setup.py install --user


