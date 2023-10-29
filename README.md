<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

## Proje Hakkında
Projede temel olarak not alma uygulamasıdır. Sisteme kayıt olduktan sonra not eklme, güncelleme, silme işlemleri ve profil güncelleme ve silme işlemleri yapabilirsiniz.

![project](https://github.com/talhaalkan/NoteApp/assets/105417379/269437d1-46d0-4b4f-8980-3b15ea2d1497)

Noteapp Local Deploy
1- Ubuntu server açın
2- php8.1 kurulumu yapın
3- php8.1-cli php8.1-common php8.1-mysql php8.1-zip php8.1-gd php8.1-mbstring php8.1-curl php8.1-xml php8.1-bcmath extension ları kurun
4- composer kurulumu yapın
5- mysql kurulumu yapın
6- phpmyadmin kurulumu yapın
7- uygulama için bir database olusturun. bunu ister mysql komutları ile isterseniz phpmyadmin arayüzü ile yapabilirsiniz
8- Noteapp reposunu clone edin (https://github.com/berkantkaraca/NoteApp)
9- .env.example dosyasını .env olarak değiştirin. İçerisindeki database bilgilerini güncelleyin
10- php artisan key:generate komutuyla APP_KEY atayın
11- sudo composer install komutuyla composer çalıştırıp gerekli dependency leri yükleyin
12- php artisan migrate komutuyla database içerisine uygulama için gerekli tabloları oluşturun
13- php artisan serve komutu ile puplish edin 
uygulamanız çalışıyor olması gerekmektedir
