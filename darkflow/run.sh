#!/bin/bash

IMAGE=darkflow-gpu
CMD=bash
# execute docker run with nvidia driver and device
docker run -it --device=/dev/nvidiactl --device=/dev/nvidia-uvm --device=/dev/nvidia0 --volume-driver nvidia-docker -v nvidia_driver_384.111:/usr/local/nvidia:ro $IMAGE $CMD
