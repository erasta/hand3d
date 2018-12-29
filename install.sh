#!/usr/bin/env bash

# on first time
# download and unzip https://lmb.informatik.uni-freiburg.de/projects/hand3d/ColorHandPose3D_data_v3.zip into project root
python3 -m venv .env
source .env/bin/activate
pip install tensorflow scipy opencv-python matplotlib Pillow

# on mac also
pip install --ignore-installed --upgrade https://github.com/lakshayg/tensorflow-build/releases/download/tf1.9.0-macos-py27-py36/tensorflow-1.9.0-cp36-cp36m-macosx_10_13_x86_64.whl

# after the first time
source .env/bin/activate
