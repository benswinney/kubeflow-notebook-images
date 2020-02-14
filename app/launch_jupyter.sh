#!/bin/bash
echo $PATH
echo $PYTHONPATH
echo $LD_LIBRARY_PATH
eval "$(conda shell.bash hook |sed 's/base/wmlce/g')"
SHELL=bash
env PATH=$PATH PYTHONPATH=$PYTHONPATH LD_LIBRARY_PATH=$LD_LIBRARY_PATH jupyter lab --notebook-dir=/home/jovyan --ip=0.0.0.0 --no-browser --allow-root --port=8888 --NotebookApp.token='' --NotebookApp.password='' --NotebookApp.allow_origin='*' --NotebookApp.base_url=${NB_PREFIX}
