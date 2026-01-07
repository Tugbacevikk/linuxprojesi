#!/bin/bash

source ./core.sh
check_dependencies

# 1️⃣ Hoş geldin ekranı
yad --info \
  --title="Pandoc Belge Dönüştürücü" \
  --width=420 \
  --center \
  --text="Pandoc Belge Dönüştürücü'ye hoş geldiniz.\n\nBu uygulama belge formatları arasında dönüşüm yapar.\n\nDevam etmek için Tamam'a basın."

[ $? -ne 0 ] && exit 0

# 2️⃣ Dosya seç / yaz
INPUT_FILE=$(yad --file \
  --title="Giriş dosyasını seçin veya yeni dosya adı yazın" \
  --center)

[ -z "$INPUT_FILE" ] && exit 0

# Dosya yoksa: içerik al ve oluştur
if [ ! -f "$INPUT_FILE" ]; then
  CONTENT=$(yad --text-info \
    --editable \
    --width=600 \
    --height=400 \
    --center \
    --title="Yeni Dosya İçeriği")

  [ $? -ne 0 ] && exit 0

  echo "$CONTENT" > "$INPUT_FILE" || {
    yad --error --text="Dosya oluşturulamadı."
    exit 1
  }
fi

# 3️⃣ Format seçimi
FORMAT=$(yad --list \
  --radiolist \
  --title="Çıkış Formatı Seçimi" \
  --width=300 \
  --height=200 \
  --column="Seç" --column="Format" \
  TRUE "pdf" \
  FALSE "docx" \
  FALSE "html")

[ -z "$FORMAT" ] && exit 0

# 4️⃣ Dönüştürme
OUTPUT_FILE=$(generate_output_filename "$INPUT_FILE" "$FORMAT")

convert_file "$INPUT_FILE" "$OUTPUT_FILE"
RESULT=$?

case $RESULT in
  0)
    yad --info \
      --title="Başarılı" \
      --text="Dönüştürme tamamlandı.\n\nOluşturulan dosya:\n$OUTPUT_FILE"
    ;;
  2)
    yad --error \
      --title="Hata" \
      --text="Çıktı dosyası zaten mevcut:\n$OUTPUT_FILE"
    ;;
  3)
    yad --error \
      --title="Hata" \
      --text="Çıktı dizinine yazma izni yok."
    ;;
  *)
    yad --error \
      --title="Hata" \
      --text="Dönüştürme sırasında bir hata oluştu."
    ;;
esac

