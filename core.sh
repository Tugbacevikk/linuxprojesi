#!/bin/bash

check_dependencies() {
    for cmd in pandoc yad whiptail; do
        if ! command -v "$cmd" &>/dev/null; then
            echo "Eksik bağımlılık: $cmd"
            exit 1
        fi
    done
}

convert_file() {
    local input="$1"
    local format="$2"
    local output="${input%.*}.$format"

    if [ ! -f "$input" ]; then
        return 1
    fi

    if [ "$format" = "pdf" ]; then
        pandoc "$input" -o "$output" --pdf-engine=pdflatex
    else
        pandoc "$input" -o "$output"
    fi

    return $?
}



