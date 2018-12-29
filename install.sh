#!/usr/bin/env bash

if [ -d ./.env/ ]
then
    # on first time
    python3 -m venv .env
    source .env/bin/activate
    pip install tensorflow scipy opencv-python matplotlib Pillow

    read -p "Are you on a Mac? " -n 1 -r
    echo    # (optional) move to a new line
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        # on mac also
        pip install --ignore-installed --upgrade https://github.com/lakshayg/tensorflow-build/releases/download/tf1.9.0-macos-py27-py36/tensorflow-1.9.0-cp36-cp36m-macosx_10_13_x86_64.whl
    fi

    echo download and unzip into project root: https://lmb.informatik.uni-freiburg.de/projects/hand3d/ColorHandPose3D_data_v3.zip

else

    # after the first time
    source .env/bin/activate
fi
