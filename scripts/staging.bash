#!/usr/bin/env bash

if ! command -v mise &> /dev/null
then
    export MISE_INSTALL_PATH=/usr/local/bin/mise
    curl https://mise.run | sh
    echo 'eval "$(/usr/local/bin/mise activate bash)"' >> ~/.bashrc
    . ~/.bashrc
fi

mise install -y

mise x pdm -- pdm sync
mise x pdm -- pdm start
