#!/bin/sh

if [ $# -eq 0 ]; then
    echo "No arguments provided"
    exit 1
fi

git add *
git commit -m "$1"
git push origin -u origin HEAD

ssh root@146.190.19.139 'bash -s' < update-prod.sh