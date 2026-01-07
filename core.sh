#!/bin/bash

check_dependencies() {
    local missing=()

    for cmd in pandoc yad whiptail; do
        command -v "$cmd" &>/dev/null || missing+=("$cmd")
    done

    if [ ${#missing[@]} -ne 0 ]; then
        local msg="Eksik bağımlılıklar:\n${missing[*]}

Kurulum için:
sudo apt install pandoc yad whiptail"

        if command -v yad &>/dev/null; then
            yad --error --title="Bağımlılık Hatası" --text="$msg"
        elif command -v whiptail &>/dev/null; then
            whiptail --msgbox "$msg" 15 70
        else
            echo -e "$msg"
        fi
        exit 1
    fi
}

generate_output_filename() {
    local input="$1"
    local format="$2"
    echo "${input%.*}.$format"
}

convert_file() {
    local input="$1"
    local output="$2"

    [ ! -f "$input" ] && return 1
    [ -e "$output" ] && return 2
    [ ! -w "$(dirname "$output")" ] && return 3

    pandoc "$input" -o "$output"
}
