# !/bin/bash

CONTAINER="doctave_runner"

if [ "$(docker ps -q -a -f name=${CONTAINER})" ]; then
    docker rm -f -v ${CONTAINER}
fi

docker run \
    --name ${CONTAINER} \
    -u doctave \
    -i -t doctave \
    /bin/bash -c "octave --no-gui"
