# linuxprojesi
 Pandoc GUI & TUI Belge Dönüştürücü
Bu proje, Pandoc komut satırı aracını kullanarak belge formatları arasında dönüşüm yapabilen
bir Grafiksel Kullanıcı Arayüzü (GUI) ve Terminal Tabanlı Kullanıcı Arayüzü (TUI) uygulamasıdır.

Proje, Linux Scriptleri ve Araçları dersi kapsamında Shell Script (Bash) kullanılarak geliştirilmiştir.
Amaç, komut satırı araçlarını teknik bilgisi olmayan kullanıcılar için daha erişilebilir hale getirmektir.

 Özellikler
Markdown (.md) ve Word (.docx) dosyalarını dönüştürme

Desteklenen çıktı formatları:

PDF

DOCX

HTML

Grafiksel arayüz (YAD)

Terminal tabanlı arayüz (Whiptail)

Modüler Bash kod yapısı

PARDUS GNU/Linux uyumluluğu

 Kullanılan Teknolojiler
Bash (Shell Script)

Pandoc

YAD (Yet Another Dialog) – GUI

Whiptail – TUI

 Kurulum
Gerekli paketleri yüklemek için:

bash

sudo apt update
sudo apt install -y pandoc yad whiptail texlive-latex-base texlive-latex-recommended
Not: texlive paketleri PDF dönüşümü için gereklidir.

Kullanım
📌 GUI (Grafik Arayüz) ile Çalıştırma
bash
Kodu kopyala
./gui.sh
Adımlar:

Giriş dosyasını seçin (.md veya .docx)

Çıkış formatını seçin (pdf, docx, html)

Dönüştürme işlemini başlatın

Oluşturulan dosya, giriş dosyasının bulunduğu dizine kaydedilir.

📌 TUI (Terminal Arayüzü) ile Çalıştırma
bash

./tui.sh
Terminal üzerinden:

Giriş dosyası yolu girilir

Çıkış formatı belirlenir

Dönüştürme işlemi gerçekleştirilir

📂 Desteklenen Dosya Türleri
Giriş (Input)
.md (Markdown)

.docx (Word Belgesi)

.txt

.html

Çıkış (Output)
.pdf

.docx

.html

Not: Pandoc, PDF dosyalarını girdi olarak desteklemez.

 Test Ortamı
Geliştirme Ortamı: WSL (Ubuntu)

Test Ortamı: PARDUS GNU/Linux

Uygulama, PARDUS üzerinde test edilmiş ve sorunsuz çalışmaktadır.

 Ekran Görüntüleri
GUI ve TUI arayüzlerine ait ekran görüntüleri
screenshots/ klasörü içerisinde yer almaktadır.
 Tanıtım Videosu
YouTube video bağlantısı buraya eklenecektir.

