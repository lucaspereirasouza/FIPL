#!/bin/bash
set -e

date=$(date '+%H:%M:%S-%m-%d-%Y')
backup="fedora-installed-packages-$date.log"
file_path="./packages_logs"


if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

echo "Fedora installed Package Logger v1.0"
dir_exists() {
    if [[ -e "$file_path" ]]; then
        return 0 
    else
        echo "File does not exit... Creating one"
        mkdir "$file_path"
        return 1 
    fi
}

if dir_exists; then
    echo "Logging installed packages to $backup..."
    rpm -qa > "$file_path/$backup"

fi

echo "Successfully logged packages to $backup"

