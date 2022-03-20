#!/usr/bin/env bash

#CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

function get_gcp_project(){
    printf "$(gcloud config get project)"
}

