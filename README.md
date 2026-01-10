## Pandoc Belge Dönüştürücü
Bu proje, pandoc kullanarak kullanıcı tarafından seçilen dosyaları
HTML, DOCX ve PDF formatlarına dönüştüren bir Linux uygulamasıdır.

Uygulama hem grafik arayüz (GUI) hem de metin tabanlı arayüz (TUI) sunar.






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
## GUI (Grafiksel Arayüz)
GUI sürümünde kullanıcı:

Grafiksel dosya seçici ile dönüştürülecek dosyayı seçer

Çıkış formatını listeden belirler

Dönüştürme işlemini başlatır

Sonuç bilgi penceresi ile kullanıcıya gösterilir

GUI çalıştırmak için:

bash gui.sh
<img width="1280" height="800" alt="image" src="https://github.com/user-attachments/assets/db306979-2921-45bc-b401-e4028236d27b" />
## TUI (Metin Tabanlı Arayüz)
TUI sürümü, whiptail kullanılarak terminal üzerinde
menü tabanlı ve etkileşimli bir kullanıcı arayüzü olarak geliştirilmiştir.

TUI sürümünde kullanıcı:

Dönüştürülecek dosyanın yolunu inputbox ile girer

Çıkış formatını menüden seçer

Dönüştürme sonucunu mesaj penceresinde görür

TUI çalıştırmak için:

bash tui.sh
<img width="1223" height="777" alt="image" src="https://github.com/user-attachments/assets/93f6a384-2320-4bb1-a16a-0acebd79579d" />
## Sonuç
Bu proje, Linux ortamında pandoc kullanarak belge dönüştürme işlemlerini
kullanıcı dostu bir şekilde gerçekleştirmeyi amaçlamaktadır.
GUI ve TUI desteği sayesinde farklı kullanım senaryolarına uygundur
Bu proje pardus ortamında yazılmış ve test edilmiştir
## yotube baglantısı için:
https://youtu.be/esrOZHYFTBQ

