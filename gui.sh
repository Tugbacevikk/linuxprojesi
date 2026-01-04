



#!/bin/bash

source ./core.sh
check_dependencies

FORM_DATA=$(yad --form \
    --title="Pandoc Belge Dönüştürücü" \
    --width=500 \
    --center \
    --field="Giriş Dosyası:FL" \
    --field="Çıkış Formatı:CB" \
    "" "pdf!docx!html")

[ $? -ne 0 ] && exit 0

INPUT_FILE=$(echo "$FORM_DATA" | cut -d'|' -f1)
FORMAT=$(echo "$FORM_DATA" | cut -d'|' -f2)

if [ -z "$INPUT_FILE" ] || [ -z "$FORMAT" ]; then
    yad --error --text="Tüm alanlar doldurulmalıdır."
    exit 1
fi

OUTPUT_FILE="${INPUT_FILE%.*}.$FORMAT"

if convert_file "$INPUT_FILE" "$OUTPUT_FILE"; then
    yad --info --text="Dönüştürme başarılı:\n$OUTPUT_FILE"
else
    yad --error --text="Dönüştürme başarısız!"
fi
