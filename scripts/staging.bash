#!/usr/bin/env bash

if ! command -v mise &> /dev/null
then
    curl https://mise.run | sh
    echo 'eval "$(~/.local/bin/mise activate bash)"' >> ~/.bashrc
    . ~/.bashrc
fi

mise install -y

pdm sync
pdm start
