#!/usr/bin/env bash

set -eou pipefail

insertSource() {
    local include=$1
    if grep -Fxq "${include}" ~/.zshrc 
    then
        echo "'${include}' already present, skipping.."
        return
    else
        echo "Inserting '${include}'.."
        echo ${include} >> ~/.zshrc
    fi
}

readonly BASE_DIR=$(cd $(dirname ${0}); pwd)
readonly aliases=${BASE_DIR}/.alias
readonly fns=${BASE_DIR}/.fn

readonly aliasInclude="source ${aliases}"
readonly fnInclude="source ${fns}"

insertSource "${aliasInclude}"
insertSource "${fnInclude}"
