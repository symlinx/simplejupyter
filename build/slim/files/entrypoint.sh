#!/bin/sh
set -x
echo "Current user : $(id)"

if [ -f /tmp/firstrun ]; then
	echo 'First run of the container. Jupyter will be installed or upgraded :o)' \
	&& pip3 install --upgrade jupyter nbconvert --user \
	&& python2 -m pip install --upgrade ipykernel --user \
        && python2 -m ipykernel install --user \
	&& ( [ ! -d ~/notebook ] && mkdir ~/notebook ) \
	&& rm -f /tmp/firstrun
fi

# Exec given CMD in Dockerfile
echo "Starting Jupyter"
echo "================"
exec "$@"
