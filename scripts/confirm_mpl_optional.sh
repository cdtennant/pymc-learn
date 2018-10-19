
#!/usr/bin/env bash

set -ex # fail on first error, print commands

if pip freeze | grep -q matplotlib
then 
    pip uninstall -y matplotlib
fi
python -c 'from pymc-learn import *'

pip install matplotlib
