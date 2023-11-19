#!/bin/bash -e
set -x
echo "starting mod..."

sudo service jack start
sudo service browsepy start
sudo service mod-host start
sudo service mod-ui start
