#!/bin/bash

function git-create() {
    source path/to/.env

    path=$1
    repo_name=`echo $path |sed 's/.*\///'`

    url=$(python3 path/to/create.py $path $repo_name 2>&1)

    cd $path

    touch README.md
    git init
    git remote add origin $url
    git add .
    git commit -m "Initial commit"
    git push -u origin master
    code .
}
