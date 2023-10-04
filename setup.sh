apt-get update
apt-get install -y lsb-release ca-certificates apt-transport-https software-properties-common
add-apt-repository ppa:ondrej/php

apt-get update
apt-get install -y apache2 mysql-server php8.2 php8.2-mysql
cp /var/www/html/playground.conf /etc/apache2/sites-available/playground.conf
a2ensite playground.conf
a2dissite 000-default.conf
systemctl reload apache2

echo "CREATE USER IF NOT EXISTS 'admin'@'localhost' IDENTIFIED BY 'admin';
      GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost';
      FLUSH PRIVILEGES;

      CREATE DATABASE IF NOT EXISTS playground;
      USE playground;
      CREATE TABLE IF NOT EXISTS users (
          user_id INT(10) NOT NULL AUTO_INCREMENT,
          username VARCHAR(20) NOT NULL,
          password VARCHAR(20) NOT NULL,
          role VARCHAR(20) NOT NULL,
          PRIMARY KEY(user_id),
          CONSTRAINT uc_username UNIQUE (username)
      );

      INSERT IGNORE INTO users (user_id, username, password, role) VALUES (NULL, 'admin', 'admin', 'admin');
      INSERT IGNORE INTO users (user_id, username, password, role) VALUES (NULL, 'test', 'test', 'user');
" | mysql
