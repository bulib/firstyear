#!/bin/bash

# show errors
set -e

# prepare sftp command
user=aidans
server=webdev.bu.edu
dev_path=/Users/aidans/projects/firstyear
prod_path=/web/l/i/library/firstyear/

# run the sftp commands
eval "sftp $user@$server <<EOF
cd $prod_path
pwd
ls
mkdir img || true
put -r $dev_path/*
ls
exit
EOF"

echo "completed deployment"  
