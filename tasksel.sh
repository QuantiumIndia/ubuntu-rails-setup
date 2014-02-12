sudo DEBIAN_FRONTEND=noninteractive \
 apt-get \
 -o Dpkg::Options::="--force-confnew" \
 --force-yes \
 -fuy \
install lamp-server^