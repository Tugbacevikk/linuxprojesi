#!/bin/bash

source ./core.sh
check_dependencies

INPUT_FILE=$(whiptail --inputbox "Dönüştürülecek dosyanın yolunu giriniz:" 10 60 3>&1 1>&2 2>&3)
[ -z "$INPUT_FILE" ] && exit 0

FORMAT=$(whiptail --menu "Çıkış formatını seçiniz:" 15 60 3 \
html "HTML" \
docx "Word" \
pdf "PDF" \
3>&1 1>&2 2>&3)

[ -z "$FORMAT" ] && exit 0

convert_file "$INPUT_FILE" "$FORMAT"
RESULT=$?

if [ $RESULT -eq 0 ]; then
    whiptail --msgbox "Dönüştürme tamamlandı.\n${INPUT_FILE%.*}.$FORMAT" 10 60
else
    whiptail --msgbox "Hata oluştu. PDF için ek paket gerekebilir." 10 60
fi


