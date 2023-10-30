#!/bin/bash

service mariadb start

# while ! mariadb-admin -u root -p"$MYSQL_ROOT_PASSWORD" ping; do
#     sleep 2
#     echo "Connecting to MariaDB..."
# done


mariadb -u root -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;"
mariadb -u root -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
mariadb -u root -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';"
mariadb -u root -e "FLUSH PRIVILEGES;"
# echo "*******************************************************************************"
# #chick if datebase created
# databases=$(mariadb -u root -p"$MYSQL_ROOT_PASSWORD" -e "SHOW DATABASES;")
# if [[ $databases == *"$MYSQL_DATABASE"* ]]; then
#     echo "Database $MYSQL_DATABASE was created."
# else
#     echo "Database $MYSQL_DATABASE was not created."
# fi

# #chick if user privileges
# user_privileges=$(mariadb -u root -p"$MYSQL_ROOT_PASSWORD" -e "SHOW GRANTS FOR '$MYSQL_USER'@'%';")
# if [[ $user_privileges == *"ALL PRIVILEGES"* ]]; then
#     echo "User $MYSQL_USER has all privileges."
# else
#     echo "User $MYSQL_USER does not have all privileges."
# fi

# echo "*******************************************************************************"


service mariadb stop

mysqld