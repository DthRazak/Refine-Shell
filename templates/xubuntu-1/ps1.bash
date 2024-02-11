#!/bin/bash

################################################################################
#
#  Filename: ps1.sh
#
#  Date: 11/02/2024
#
#  Comitter: https://github.com/DthRazak
#
#  Source link: https://xubuntu.org/
#
################################################################################

# This variable should be the same as the folder name where this template is stored
export REFINE_SHELL_TEMPLATE_NAME="xubuntu-1"

# PS1 environment variable (should be last)
export PS1='\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
