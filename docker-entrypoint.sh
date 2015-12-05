#! /usr/bin/env bash

TARGET_GID=$(stat -c "%g" /sopel)
EXISTS=$(cat /etc/group | grep $TARGET_GID | wc -l)

# Create new group using target GID and add sopel user
if [ $EXISTS == "0" ]; then
  groupadd -g $TARGET_GID tempgroup
  usermod -a -G tempgroup sopel
else
  # GID exists, find group name and add
  GROUP=$(getent group $TARGET_GID | cut -d: -f1)
  usermod -a -G $GROUP sopel
fi

sopel -c /sopel/default.cfg
