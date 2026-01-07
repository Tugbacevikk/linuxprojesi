#!/bin/bash

source ./core.sh
check_dependencies

# Dosya seç
INPUT_FILE=$(yad --file --title="Dönüştürülecek dosyayı seç")
[ -z "$INPUT_FILE" ] && exit 0

# Format seç (TEK SÜTUN, | YOK)
FORMAT=$(yad --list \
  --title="Çıkış formatını seçiniz" \
  --column="Format" \
  html \
  docx \
  pdf)

[ -z "$FORMAT" ] && exit 0

# Güvenlik: boşluk ve | temizle
FORMAT=$(echo "$FORMAT" | tr -d '[:space:]|')

# Debug – son kez kontrol
yad --info --text="Seçilen format: $FORMAT"

# Dönüştür
convert_file "$INPUT_FILE" "$FORMAT"
RESULT=$?

if [ $RESULT -eq 0 ]; then
    yad --info --text="Dönüştürme tamamlandı.\n\nOluşturulan dosya:\n${INPUT_FILE%.*}.$FORMAT"
else
    yad --error --text="Dönüştürme sırasında hata oluştu."
fi


