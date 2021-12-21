#!/bin/bash

set -e

echo Enter latest docker-compose version:

read version

echo Authorize installation:

sudo curl -L "https://github.com/docker/compose/releases/download/$version/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

echo Applying executable permissions to docker-compose binary...

sudo chmod +x /usr/local/bin/docker-compose

echo Successfully installed docker-compose
