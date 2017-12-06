#!/usr/bin/env bash

cd /var/www/docroot
_gatsby=$(which gatsby 2>/dev/null)
# Lines to initialize NPM as root
_load_nvm="export NVM_DIR=\"/home/docker/.nvm\"; . \"$NVM_DIR/nvm.sh\""
# Execute gatsby develop as root to be able to bind to port 80
sudo su -c "$_load_nvm; /opt/gatsby develop --host=0.0.0.0 --port=80"