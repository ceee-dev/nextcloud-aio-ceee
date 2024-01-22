 #! /bin/sh

function print_random () {
  LC_ALL=C tr -dc 'A-Za-z0-9!#%&()*+,-./:;<=>?@[\]^_{|}~' </dev/urandom | head -c 32
}

/bin/echo -n "LLDAP_JWT_SECRET='"
print_random
echo "'"

/bin/echo -n "LLDAP_KEY_SEED='"
print_random
echo "'"

/bin/echo -n "DATABASE_PASSWORD='"
print_random
echo "'"

/bin/echo -n "FULLTEXTSEARCH_PASSWORD='"
print_random
echo "'"

/bin/echo -n "LLDAP_JWT_SECRET='"
print_random
echo "'"

/bin/echo -n "LLDAP_LDAP_USER_PASS='"
print_random
echo "'"

/bin/echo -n "NEXTCLOUD_PASSWORD='"
print_random
echo "'"

/bin/echo -n "ONLYOFFICE_SECRET='"
print_random
echo "'"

/bin/echo -n "PIHOLE_WEBPASSWORD='"
print_random
echo "'"

/bin/echo -n "RECORDING_SECRET='"
print_random
echo "'"

/bin/echo -n "REDIS_PASSWORD='"
print_random
echo "'"

/bin/echo -n "SIGNALING_SECRET='"
print_random
echo "'"

/bin/echo -n "TALK_INTERNAL_SECRET='"
print_random
echo "'"

/bin/echo -n "TURN_SECRET='"
print_random
echo "'"

/bin/echo -n "VAULTWARDEN_ADMIN_TOKEN='"
print_random
echo "'"

echo AIO_DATABASE_HOST='nextcloud-aio-database'
echo NC_DOMAIN='ceee.dev'  
echo NC_DOMAIN_BASE_DN='dc=ceee,dc=dev'  
echo CLAMAV_ENABLED="yes"    
echo COLLABORA_ENABLED="yes" 
echo FULLTEXTSEARCH_ENABLED="yes"
echo IMAGINARY_ENABLED="yes"
echo ONLYOFFICE_ENABLED="yes" 
echo TALK_ENABLED="yes" 
echo TALK_RECORDING_ENABLED="yes" 
echo APACHE_IP_BINDING=127.0.0.1      
echo APACHE_MAX_SIZE=10737418240
echo APACHE_PORT=10443
echo COLLABORA_DICTIONARIES="de_DE en_GB en_US es_ES fr_FR it nl pt_BR pt_PT ru" 
echo COLLABORA_SECCOMP_POLICY='--o:security.seccomp=true'
echo INSTALL_LATEST_MAJOR=no 
echo NEXTCLOUD_ADDITIONAL_APKS='imagemagick'
echo NEXTCLOUD_ADDITIONAL_PHP_EXTENSIONS='imagick'
echo NEXTCLOUD_DATADIR=nextcloud_aio_nextcloud_data 
echo NEXTCLOUD_MAX_TIME=3600 
echo NEXTCLOUD_MEMORY_LIMIT=512M
echo NEXTCLOUD_MOUNT=/mnt/  
echo NEXTCLOUD_STARTUP_APPS="deck twofactor_totp tasks calendar contacts notes" 
echo NEXTCLOUD_TRUSTED_CACERTS_DIR=/usr/local/share/ca-certificates/my-custom-ca 
echo NEXTCLOUD_UPLOAD_LIMIT=10G 
echo REMOVE_DISABLED_APPS=yes 
echo TALK_PORT=3478 
echo UPDATE_NEXTCLOUD_APPS="yes"
echo IPV6_NETWORK='fd12:3456:789a:2::/64'
echo TIMEZONE="Asia/Colombo"
