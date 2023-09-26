#!/bin/bash

#-> 1. create an conda environment 
conda remove --name pointsite_inference --all -y
conda create --name pointsite_inference python=3.6 -y
conda activate pointsite_inference

#-> 2. install related library
pip install torch==1.3.0
conda install scikit-learn -y
conda install tqdm -c conda-forge -y
conda install pillow -c conda-forge -y

#-> 3. run setup
#rm -rf build/ dist/ sparseconvnet.egg-info sparseconvnet/SCN*.so
#sudo apt-get update
#sudo apt install g++
#python setup.py develop
python util/setup_test.py
#rm -rf build/ dist/ sparseconvnet.egg-info 

#-> 4. deactivate
conda deactivate 2> /dev/null

#sudo apt -y install meshlab
