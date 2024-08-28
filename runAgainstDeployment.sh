#!/usr/bin/env bash
echo "*******************************************************************************"
echo "* ALWAYS ENSURE YOU CAN CONNECT TO YOUR DEPLOYMENT BEFORE STARTING ************"
echo "*******************************************************************************"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PORT=9595
if [ ! -z "$1" ]; then
    PORT=$1
fi
echo 'Checking dependencies...'
cd ${SCRIPT_DIR}/autoprovisioning-help
if [ ! -d ".cdt" ]; then
  # Install packages
  cdt2 package install || exit
else
  echo 'Dependencies already installed'
fi
echo -e "\033[0;32mAll checks passed\033[0m\n\n" \
        "\033[1;34m----------------------------------------------------------------------\033[0m\n" \
        " Navigate to \033[1;33mhttp://[your external ip]:$PORT\033[0m in Safari to view in iPad\n" \
        "\033[1;34m----------------------------------------------------------------------\033[0m \n\n"
cdt2 serve -m proxyServer.js -p $PORT