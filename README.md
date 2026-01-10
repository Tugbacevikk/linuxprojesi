## Pandoc Belge Dönüştürücü
Bu proje, pandoc kullanarak kullanıcı tarafından seçilen dosyaları
HTML, DOCX ve PDF formatlarına dönüştüren bir Linux uygulamasıdır.

Uygulama hem grafik arayüz (GUI) hem de metin tabanlı arayüz (TUI) sunar.
<img width="1280" height="800" alt="image" src="https://github.com/user-attachments/assets/db306979-2921-45bc-b401-e4028236d27b" />



## Özellikler
Dosyaları HTML, DOCX ve PDF formatlarına dönüştürme

Grafik arayüz (yad) desteği

Metin tabanlı arayüz (whiptail) desteği

PDF çıktısı için LaTeX (pdflatex) motoru kullanımı

Basit ve modüler bash script yapısı

## Kullanılan Teknolojiler
pandoc

yad

whiptail

bash

LaTeX (pdflatex)


## Gerekli paketleri yüklemek için:

sudo apt update
sudo apt install pandoc yad whiptail texlive-latex-base texlive-latex-recommended texlive-latex-extra

Not: PDF çıktısı için LaTeX tabanlı paketlerin sistemde kurulu olması gerekmektedir.

Kullanım
Öncelikle dosyalara çalıştırma izni verin:

chmod +x gui.sh tui.sh core.sh

Grafik Arayüz (GUI)
./gui.sh

## Dönüştürülecek dosya seçilir

Çıkış formatı (HTML / DOCX / PDF) seçilir

Dönüştürme işlemi gerçekleştirilir

Metin Tabanlı Arayüz (TUI)
./tui.sh

Dosya yolu girilir

Çıkış formatı seçilir

Dönüştürme işlemi gerçekleştirilir

PDF Dönüştürme Hakkında
Pandoc, PDF çıktısı üretmek için harici bir PDF motoruna ihtiyaç duyar.
Bu projede PDF üretimi pdflatex kullanılarak yapılmaktadır.

Gerekli LaTeX paketleri kurulu değilse PDF dönüştürme işlemi başarısız olabilir.
Bu durumda uygulama kullanıcıyı bilgilendirir.

## Proje Yapısı
pandoc-gui-project/
├── core.sh
├── gui.sh
├── tui.sh
└── README.md

## Sonuç
Bu proje, Linux ortamında pandoc kullanarak belge dönüştürme işlemlerini
kullanıcı dostu bir şekilde gerçekleştirmeyi amaçlamaktadır.
GUI ve TUI desteği sayesinde farklı kullanım senaryolarına uygundur
## yotube baglantısı için:
https://youtu.be/esrOZHYFTBQ

