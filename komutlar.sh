{\rtf1\ansi\ansicpg1252\cocoartf2636
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Monaco;}
{\colortbl;\red255\green255\blue255;\red22\green21\blue22;\red22\green21\blue22;\red22\green21\blue22;
\red22\green21\blue22;}
{\*\expandedcolortbl;;\cssrgb\c11373\c10980\c11373;\cssrgb\c11373\c10980\c11373\c3922;\cssrgb\c11373\c10980\c11373;
\cssrgb\c11373\c10980\c11373\c3922;}
\paperw11900\paperh16840\margl1440\margr1440\vieww9720\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
    1  sudo apt update\
    2  sudo apt install php8.1\
    3  php -v\
    4  sudo apt-get install -y php8.1-cli php8.1-common php8.1-mysql php8.1-zip php8.1-gd php8.1-mbstring php8.1-curl php8.1-xml php8.1-bcmath\
    5  curl -sS {\field{\*\fldinst{HYPERLINK "https://getcomposer.org/installer"}}{\fldrslt https://getcomposer.org/installer}} -o /tmp/composer-setup.php\
    6  HASH=`curl -sS {\field{\*\fldinst{HYPERLINK "https://composer.github.io/installer.sig"}}{\fldrslt https://composer.github.io/installer.sig}}`\
    7  php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === '$HASH') \{ echo 'Installer verified'; \} else \{ echo 'Installer corrupt'; unlink('composer-setup.php'); \} echo PHP_EOL;"\
    8  echo $HASH\
    9  history\
   10  sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer\
   11  composer\
   12  history\
   13  sudo systemctl start apache2\
   14  sudo systemctl enable apache2\
   15  sudo systemctl status apache2\
   16  sudo apt install mysql-server -y\
   17  sudo systemctl start mysql.service\
   18  sudo mysql\
\pard\pardeftab720\partightenfactor0
\cf4 \cb5 \outl0\strokewidth0 \strokec4 	  ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '123456789';\
	  exit;\cf2 \cb3 \outl0\strokewidth0 \
\pard\pardeftab720\partightenfactor0
\cf2    19  mysql -u root -p123456789\
   20  sudo apt update\
   21  sudo apt install phpmyadmin\
	  bo\uc0\u351 luk tu\u351 una basarak apache2 yi se\'e7iyoruz, aksi halde config dosyas\u305  olu\u351 muyor.\
   22  sudo phpenmod mbstring \
   23  sudo systemctl restart apache2\
   24  cd /var/www/html/\
   25  ls\
   26  sudo git clone {\field{\*\fldinst{HYPERLINK "https://github.com/emre-olgun/NoteApp.git"}}{\fldrslt https://github.com/emre-olgun/NoteApp.git}}\
   27  sudo chmod -R 777 /var/www/html/*\
   28  ls -al\
   29  cd NoteApp/\
   30  ls -al\
   31  cd ..\
   32  sudo chown -R ubuntu:ubuntu ./NoteApp\
   33  ls -al\
   34  cd NoteApp/\
   35  composer install\
   36  php artisan key:generate\
   37  php artisan migrate\
   38  php artisan serve\
   39  sudo chown -R www-data:www-data ./NoteApp/storage\
   40  cd .\
   41  sudo chown -R www-data:www-data ./NoteApp/storage\
   42  sudo systemctl restart apache2\
   43  cd /etc/apache2/sites-avaliable\
   44  cd /etc/apache2/sites-available/\
   45  ls\
   46  sudo vim 000-default.conf \
   47  sudo systemctl restart apache2\
   48  history\
}