#!/bin/bash

# Gerekli programlar sistemde var mı?
check_dependencies() {
    local missing=0
    for cmd in pandoc yad whiptail; do
        if ! command -v "$cmd" &>/dev/null; then
            echo "Eksik bağımlılık: $cmd"
            missing=1
        fi
    done

    if [ $missing -eq 1 ]; then
        exit 1
    fi
}

# Pandoc ile dosya dönüştürme
convert_file() {
    local input="$1"
    local output="$2"

    if [ ! -f "$input" ]; then
        return 1
    fi

    pandoc "$input" -o "$output"
}
