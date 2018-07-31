sudo apt-get install apache2
sudo service apache2 start
sudo apt-get install mysql-client mysql-server
sudo  service  mysql start
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt update
php -v
sudo apt install php7.1 libapache2-mod-php7.1 php7.1-common php7.1-mbstring php$
echo "enter thename of the database"
read  database
echo "enter the name of the user"
read  databaseuser
echo "create database $database;
CREATE USER '$databaseuser'@'localhost' IDENTIFIED BY '72muskan';
GRANT ALL ON opencart.* TO 'databaseuser'@'localhost' IDENTIFIED BY '72muskan' $
flush privileges;
exit;"|sudo mysql -u root -p
cd /
sudo wget https://github.com/opencart/opencart/releases/download/3.0.2.0/3.0.2.0-OpenCart.zip
sudo apt-get install unzip
sudo unzip 3.0.2.0-OpenCart.zip
cd /var/www/html/upload
sudo mv *  /var/www/html/
sudo cp /var/www/html/config-dist.php /var/www/html/config.php
sudo cp /var/www/html/admin/config-dist.php /var/www/html/admin/config.php
sudo chown -R www-data:www-data /var/www/html/
sudo chmod -R 755 /var/www/html/
cd /etc/apache2/sites-available/
sudo touch  opencart.conf
sudo chmod 777 opencart.conf
echo "<VirtualHost *:80>
     ServerAdmin admin@example.com
     DocumentRoot /var/www/html/opencart/
     ServerName 18.191.115.215
     ServerAlias  18.191.115.215

     <Directory /var/www/html/opencart/>
        Options FollowSymlinks
        AllowOverride All
        Order allow,deny
		  allow from all
     </Directory>

     ErrorLog ${APACHE_LOG_DIR}/error.log
     CustomLog ${APACHE_LOG_DIR}/access.log combined

</VirtualHost>" >> opencart.conf
sudo a2ensite opencart.conf
sudo a2enmod rewrite
sudo service apache2 restart





