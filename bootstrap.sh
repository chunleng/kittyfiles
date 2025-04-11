#!/usr/bin/env bash

set eu

APP_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )"

mkdir -p ${HOME}/.config/kitty

ln -sfn ${APP_PATH}/kitty.conf ${HOME}/.config/kitty/kitty.conf
ln -sfn ${APP_PATH}/default_session.conf ${HOME}/.config/kitty/default_session.conf

# Enable authentication via touch ID
grep -q pam_tid.so /etc/pam.d/sudo || \
  sed "s/\(# sudo: auth account password session\)/\1\nauth       sufficient     pam_tid.so/" /etc/pam.d/sudo | sudo tee /etc/pam.d/sudo
