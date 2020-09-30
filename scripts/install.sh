#!/usr/bin/env bash


function run_all {
    for dir in ./*/     # list all directories
    do
        dir=${dir%*/}      # remove the trailing "/"
        file=${dir##*/}/$1 
        if test -f "$file"; then
            echo "run $file"
            bash $file
        fi
    done
}  

function clean {
    rm -rf /var/lib/apt/lists/*
}

# curl is a common tool to install dependencies
apt-get update
apt-get install -y curl software-properties-common

run_all before_install.sh
# trigger one apt-get update for all
apt-get update
run_all install.sh
run_all after_install.sh

clean