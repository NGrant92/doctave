# !/bin/bash

# container name variable
CONTAINER="doctave_runner"
# remove any container with same name if it exists
if [ "$(docker ps -q -a -f name=${CONTAINER})" ]; then
  docker rm -f -v ${CONTAINER}
fi
# command to boot container
docker run \
  --name ${CONTAINER} \
  -u doctave \
  -i -t doctave \
  /bin/bash -c "octave --no-gui"
