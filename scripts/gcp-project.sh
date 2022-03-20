#!/usr/bin/env bash

function main(){
    project=$(gcloud config get project 2>/dev/null)
    if [ $? -ne 0 ] || [ -z "${project}" ]; then
        return 1
    fi

    printf ${project}
}

main
