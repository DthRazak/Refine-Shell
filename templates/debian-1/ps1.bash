#!/bin/bash

################################################################################
#
#  Filename: ps1.sh
#
#  Date: 11/02/2024
#
#  Comitter: https://github.com/DthRazak
#
#  Source link: https://www.debian.org/index.en.html
#
################################################################################

# This variable should be the same as the folder name where this template is stored
export REFINE_SHELL_TEMPLATE_NAME="debian-1"

# PS1 environment variable (should be last)
export PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
