#!/bin/sh

##### Constants #####
PRINTK_NONE="1 1 1 1"
printk_config=$(cat /proc/sys/kernel/printk)
SCR_PATH=/root/install

SOURCE_MOUNT_PATH=/media/source

. "${SCR_PATH}/board_params.sh"
. "${SCR_PATH}/functions.sh"

## Sanicty Check ##
[ $(basename $BASH_SOURCE) == $(basename $0) ] && EXIT="exit" || EXIT="return"
[ -z ${SOURCE_MEDIA} ] && ${EXIT} 3

title " Unmount Source ${SOURCE_MEDIA} "
unmount_source
