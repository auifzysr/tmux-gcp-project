#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "${CURRENT_DIR}/scripts/utils.sh"

interpolation="\#{gcp_project}"
command="#($CURRENT_DIR/scripts/gcp-project.sh)"

function main(){
    option_value="$(get_tmux_option status-right)"
    new_option_value=${option_value//${interpolation}/${command}}

    tmux set-option -gq "status-right" "${new_option_value}"
}

main
