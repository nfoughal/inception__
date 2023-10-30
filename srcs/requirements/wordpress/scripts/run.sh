if [ ! -f "/var/www/html/wp-config.php" ]; then

    echo "Downloading and installing WordPress.."
    echo "Runing php"
    wp core download  --path="/var/www/html" --allow-root
    cd /var/www/html/
    echo "***************** config install **************"
    wp config create --dbname="$MYSQL_DATABASE" --dbuser="$MYSQL_USER" --dbpass="$MYSQL_PASSWORD" --dbhost="mariadb" --path="/var/www/html" --skip-check --allow-root
        echo "*****************  install **************"
        # wp core install --url="$DOMIN_NAME" --title="$WORDPRESS_TITLE" --admin_user="$WORDPRESS_ADMIN_USER" --admin_password="$WORDPRESS_ADMIN_PASSWORD" --admin_email="$WORDPRESS_ADMIN_EMAIL" --path="/var/www/html" --allow-root
        wp core install --url="localhost:8080" --title="$WORDPRESS_TITLE" --admin_user="$WORDPRESS_ADMIN_USER" --admin_password="$WORDPRESS_ADMIN_PASSWORD" --admin_email="$WORDPRESS_ADMIN_EMAIL" --path="/var/www/html" --allow-root
        echo "*****************  install **************"
    wp user create  $WORDPRESS_USER $WORDPRESS_USER_EMAIL --role=author --user_pass=$WORDPRESS_USER_PASSWORD --path="/var/www/html" --allow-root

    echo "runing..."
fi

mkdir -p "/run/php/"

php-fpm7.4 -F 