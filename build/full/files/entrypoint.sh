#!/bin/sh
set -e
echo "Current user : $(id)"

if [ -f /tmp/firstrun ]; then
	echo 'First run of the container. Jupyter will be installed.' \
	&& pip3 install --upgrade jupyter nbconvert --user \
	&& rm -f /tmp/firstrun
fi

# Exec given CMD in Dockerfile
echo "Starting Jupyter"
echo "================"
exec "$@"
