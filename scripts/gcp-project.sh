#!/usr/bin/env bash

#CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

function get_gcp_project(){
    project=$(gcloud config get project 2>/dev/null)
    if [ $? -ne 0 ] || [ -z "${project}" ]; then
        return 1
    fi

    printf ${project}
}
