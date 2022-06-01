#!/bin/sh

if [ $# -eq 0 ]; then
    echo "No arguments provided"
    exit 1
fi

cd ..

git add *
git commit -m "$1"
git push -u origin HEAD

ssh root@146.190.19.139 'bash -s' < ./scripts/update-prod.sh