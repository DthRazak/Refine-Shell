#!/bin/bash

################################################################################
#
#  Filename: ps1.sh
#
#  Date: Date when the script was created/last modified (dd/mm/yyyy).
#
#  Comitter: GitHub link to the profile of the committer.
#
#  Source link: Link to the source (if the idea was taken from someone else)/NA.
#
################################################################################

# This variable should be the same as the folder name where this template is stored
export REFINE_SHELL_TEMPLATE_NAME="example-0"

# Actual code goes here

# PS1 environment variable (should be last)
export PS1="\[\e[36m\][Refine-Shell] \[\e[0m\]\u@\h:\w\$ "
