#!/bin/bash

source ./core.sh

check_dependencies

INPUT_FILE=$(whiptail --inputbox "Giriş dosyasını yaz (örn: dosya.md):" 10 60 3>&1 1>&2 2>&3)
[ -z "$INPUT_FILE" ] && exit 0

FORMAT=$(whiptail --inputbox "Çıkış formatı (pdf/docx/html):" 10 60 3>&1 1>&2 2>&3)
[ -z "$FORMAT" ] && exit 0

OUTPUT_FILE="${INPUT_FILE%.*}.$FORMAT"

if convert_file "$INPUT_FILE" "$OUTPUT_FILE"; then
    whiptail --msgbox "Dönüştürme başarılı:\n$OUTPUT_FILE" 10 60
else
    whiptail --msgbox "Dönüştürme başarısız!" 10 60
fi
