#!/bin/bash -l
set -e
nvm use 6
source $PREFIX/bin/activate
export ASYNC_TEST_TIMEOUT=30

py.test -vsx jupyterhub/tests || exec bash
exit 0
