#!/bin/bash

function git-create() {
    source .env

    path=$1
    repo_name=`echo $path |sed 's/.*\///'`

    url=$(python create.py $path $repo_name 2>&1)
    echo "URL: ${url}"

    git clone $url $path
}

cd "$(dirname "$0")" || exit

git-create $1
