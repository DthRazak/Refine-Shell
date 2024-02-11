#!/bin/bash

################################################################################
#
#  Filename: ps1.sh
#
#  Date: 11/02/2024
#
#  Comitter: https://github.com/DthRazak
#
#  Source link: NA
#
################################################################################

# This variable should be the same as the folder name where this template is stored
export REFINE_SHELL_TEMPLATE_NAME="lemon-sea-shell-1"

# Define a function to get the Git branch (if in a Git repository)
git_branch() {
    local branch
    branch=$(git symbolic-ref --short HEAD 2>/dev/null)
    if [ -n "$branch" ]; then
        echo " ($branch)"
    fi
}

current_dir() {
    local IFS='/'
    read -ra pwd_arr <<< "$PWD"
    if [ ${#pwd_arr[@]} -gt 4 ]; then
        echo "../${PWD#"${PWD%/*/*/*}"/}"
    elif [ ${#pwd_arr[@]} -eq 4 ]; then
        echo "/${PWD#"${PWD%/*/*/*}"/}"
    else
        echo "${PWD#"${PWD%/*/*/*}"/}"
    fi
}

current_path() {
    local pwd_str=""
    local IFS='/'
    read -ra pwd_arr <<< "$PWD"
    local num_dirs=${#pwd_arr[@]}
 
    if [ "$num_dirs" -gt 3 ]; then
        for ((i = 0; i < num_dirs; i++)); do
            if [ $i -lt $((num_dirs - 3)) ]; then
                first_letter="${pwd_arr[i]:0:1}"
                pwd_str+="$first_letter/"
            else
                pwd_str+="${pwd_arr[i]}/"
            fi
        done
    else
        pwd_str="$PWD"
    fi
 
    echo "$pwd_str"
}

# PS1 environment variable (should be last)
export PS1='\[\e[1;35m\]\D{%T}\[\e[0m\] `if [ $? = 0 ]; then echo "\[\033[01;32m\]✔"; else echo "\[\033[01;31m\]✘"; fi`\[\e[0m\]\[\e[38;5;39m\]$(git_branch) \[\e[1;33m\]\u\[\e[0m\]@\[\e[38;5;243m\]\h:\[\e[0m\]\[\e[1;34m\]$(current_path)\[\e[00m\]\$ '
