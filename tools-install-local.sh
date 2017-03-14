#!/bin/bash

git submodule update --init --remote --recursive --force

MYDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source "${MYDIR}/lib/_lib.sh"

LOCATION=$1

sudo chmod +x $MYDIR/bin/*
sudo cp -f $MYDIR/bin/* $LOCATION/
