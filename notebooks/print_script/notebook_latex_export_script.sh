#!/bin/bash

source deactivate 

source activate py35_gu

jupyter nbconvert --to latex --template pdf_nocode.tplx mgmt_notebook05092016.ipynb
