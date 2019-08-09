#!/bin/bash

function git-create() {
    source /path/to/.env

    path=$1
    repo_name=`echo $path |sed 's/.*\///'`

    url=$(python3 /path/to/create.py $path $repo_name 2>&1)
    echo "URL: ${url}"

    git clone $url $path
}
