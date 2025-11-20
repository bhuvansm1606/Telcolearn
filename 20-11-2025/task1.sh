#!/bin/bash

echo "Do you want to create(1), delete(2), or move(3) a file?"
read choice

if [[ "$choice" -eq 1 ]]; then
    echo "Enter the file name:"
    read fname
    touch "$fname"
    echo "File created: $fname"

elif [[ "$choice" -eq 2 ]]; then
    echo "Which file do you want to delete?"
    read fname
    if [[ -f "$fname" ]]; then
        rm "$fname"
        echo "File found and deleted."
    else
        echo "File not found."
    fi

elif [[ "$choice" -eq 3 ]]; then
    echo "Enter source file:"
    read src
    echo "Enter destination directory:"
    read dest
    
    if [[ -f "$src" && -d "$dest" ]]; then
        mv "$src" "$dest"
        echo "File moved successfully!"
    else
        echo "Source file or destination directory not found."
    fi

else
    echo "Incorrect operation."
fi

