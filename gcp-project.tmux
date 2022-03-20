#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "${CURRENT_DIR}/scripts/gcp-project.sh"
source "${CURRENT_DIR}/scripts/utils.sh"

function main(){
    project="$(get_gcp_project)"
    if [ $? -ne 0 ]; then
        return
    fi

    option_value="$(get_tmux_option status-right)"
    tmux set-option -gq "status-right" "GCP:${project} ${option_value}"
}

main