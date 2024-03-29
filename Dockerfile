# This is a pre-release
FROM digirati/madoc-platform:1.2.2

# Add our theme
ADD --chown=www-data:www-data ./stanford-madoc-theme /srv/omeka/themes/stanford-madoc-theme

# Add custom translations
ADD --chown=www-data:www-data ./translations/s/ /srv/omeka/translations/s/

# Add any other configuration needed.
ADD ./config/php.ini  /etc/php.d/99-custom-php-config.ini
