#!/bin/bash 

if [ $# -ne 3 ]; then
  echo "Please provid ip(hostname) user password"
  exit 1
fi
if [ type sshpass > /dev/null ]; then
  echo "Please install sshpass command"
  exit1
fi

IP=$1
USER=$2
PASS=$3
echo $PASS | sshpass ssh-copy-id -o StrictHostKeyChecking=no -o ConnectTimeout=3 $USER@$IP
