#!/bin/bash

# Run the newly-minted 'raspi-custom' image.
# Useful for testing your image before flashing it to an SD card.
# Default entrypoint is 'bash', but can be changed.
# Note: The '--rm' option removes the container upon exit.

set -e

if [ -z "$1" ] ; then
    echo "No entrypoint given"
    exit 1
fi

docker run --rm -it raspi-custom "$1"
