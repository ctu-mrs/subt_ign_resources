#!/bin/bash

MY_PATH=`dirname "$0"`
MY_PATH=`( cd "$MY_PATH" && pwd )`

FILENAME_PILSEN_TESTBED=pilsen_robot_testbed_ign.tar.gz
FILENAME_LOUISEVILLE=louiseville_mega_cavern_ign.tar.gz

[ ! -d $MY_PATH/models ] && mkdir $MY_PATH/models
cd $MY_PATH/models

echo "Downloading models from NAS"
wget --no-check-certificate -O $FILENAME_PILSEN_TESTBED https://nasmrs.felk.cvut.cz/index.php/s/6fFN8GhhstoSkLA/download
wget --no-check-certificate -O $FILENAME_LOUISEVILLE https://nasmrs.felk.cvut.cz/index.php/s/fE1sNg0IqeF4v6s/download


echo "Unzipping models"
tar -xvzf $FILENAME_PILSEN_TESTBED
tar -xvzf $FILENAME_LOUISEVILLE

echo "Cleaning up"
rm $FILENAME_PILSEN_TESTBED $FILENAME_LOUISEVILLE

echo "Done"