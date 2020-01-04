#!/bin/bash
# Script to set a custom environmental variable within a conda environment
#
# Usage:
#
# ./set_env_var.sh VARIABLE VALUE
#
# Repeat as necessary for each variable
if [ ! $# -eq 2 ]; then
    echo 'Please specify two arguments'
    exit 1

else
    cd $CONDA_PREFIX
    
    if [ ! -f ./etc/conda/activate.d/env_vars.sh ]; then
        echo "Creating ${CONDA_PREFIX}/etc/conda/activate.d/env_vars.sh"
        mkdir -p ./etc/conda/activate.d
        touch ./etc/conda/activate.d/env_vars.sh
        echo '#!/bin/sh' > ./etc/conda/activate.d/env_vars.sh
    fi
    
    if [ ! -f ./etc/conda/deactivate.d/env_vars.sh ]; then
        echo "Creating ${CONDA_PREFIX}/etc/conda/deactivate.d/env_vars.sh"
        mkdir -p ./etc/conda/deactivate.d
        touch ./etc/conda/deactivate.d/env_vars.sh
        echo '#!/bin/sh' > ./etc/conda/deactivate.d/env_vars.sh                
    fi
    
    echo "export ${1}=${2}" >> ./etc/conda/activate.d/env_vars.sh
    echo "unset ${1}"  >> ./etc/conda/deactivate.d/env_vars.sh
    echo "Setting new environmental variable ${1}"
    
fi