<VirtualHost *:80>
	ServerName 127.0.0.1
	DocumentRoot /var/www
	ErrorLog /tmp/error.log
	#CustomLog /tmp/access.log
<Directory "/var/www">
Options +Includes
Options +FollowSymLinks -Indexes

# Include Below For Testing Apache Ultimate Bad Bot blocker - Disabled For Now
#Include /etc/apache2/custom.d/globalblacklist.conf

# Setup WordPress Rewrites - Disabled For Now
#<IfModule mod_rewrite.c>
#RewriteEngine On
#RewriteBase /
#RewriteRule ^index\.php$ - [L]
#RewriteCond %{REQUEST_FILENAME} !-f
#RewriteCond %{REQUEST_FILENAME} !-d
#RewriteRule . /index.php [L]
## END WordPress ##
#</IfModule>

</Directory>
</VirtualHost>