#!/bin/bash


module load python/3.4
mkdir -p $HOME/.local/share/jupyter
mkdir -p $HOME/.local/lib/python3.4/site-packages
git clone https://github.com/ipython-contrib/jupyter_contrib_nbextensions.git jupyter_contrib_nbextensions
cd jupyter_contrib_nbextensions/
python3 setup.py install --prefix=$HOME/.local 2>&1 | tee IDRE_python3_setup_install.log