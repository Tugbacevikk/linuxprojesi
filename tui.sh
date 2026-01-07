#!/bin/bash

source ./core.sh
check_dependencies

# Giriş dosyası al
INPUT_FILE=$(whiptail --inputbox "Giriş dosyasını yazınız (örn: dosya.md):" 10 60 3>&1 1>&2 2>&3)
[ -z "$INPUT_FILE" ] && exit 0

# Çıkış formatı menüsü
FORMAT=$(whiptail --menu "Çıkış formatını seçiniz:" 15 60 3 \
"pdf" "PDF Dosyası" \
"docx" "Word Dosyası" \
"html" "HTML Dosyası" \
3>&1 1>&2 2>&3)

[ -z "$FORMAT" ] && exit 0

# Çıktı dosyası adı
OUTPUT_FILE=$(generate_output_filename "$INPUT_FILE" "$FORMAT")

# Dönüştürme
convert_file "$INPUT_FILE" "$OUTPUT_FILE"
RESULT=$?

case $RESULT in
  0)
    whiptail --msgbox "Dönüştürme başarılı.\n\nOluşturulan dosya:\n$OUTPUT_FILE" 10 60
    ;;
  2)
    whiptail --msgbox "Çıktı dosyası zaten mevcut:\n$OUTPUT_FILE" 10 60
    ;;
  3)
    whiptail --msgbox "Çıktı dizinine yazma izni yok." 10 60
    ;;
  *)
    whiptail --msgbox "Dönüştürme sırasında hata oluştu." 10 60
    ;;
esac

