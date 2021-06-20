#!/usr/bin/env bash

set eu

APP_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )"

mkdir -p ${HOME}/.config/kitty

ln -sfn ${APP_PATH}/kitty.conf ${HOME}/.config/kitty/kitty.conf
ln -sfn ${APP_PATH}/plugins/vim-kitty-navigator/pass_keys.py ${HOME}/.config/kitty/pass_keys.py
ln -sfn ${APP_PATH}/plugins/vim-kitty-navigator/neighboring_window.py ${HOME}/.config/kitty/neighboring_window.py
