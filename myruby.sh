wget https://raw.github.com/QuantiumIndia/ubuntu-rails-setup/master/000-default

set -e
set -x

read -s -p "Enter MYSQL Password  : " my_password
sudo apt-get update
sudo apt-get  -y upgrade
sudo apt-get install git
sudo apt-get install curl
sudo apt-get install -y tasksel git build-essential zlib1g-dev
sudo apt-get install -y ruby1.9.1-full

export DEBIAN_FRONTEND=noninteractive
sudo DEBIAN_FRONTEND=noninteractive \
 apt-get \
 -o Dpkg::Options::="--force-confnew" \
 --force-yes \
 -fuy \
install lamp-server^

sudo apt-get install -y libmysql-ruby libmysqlclient-dev
sudo gem install rails --version '=3.2.14'

sudo apt-get install -y apache2-dev libapr1-dev libaprutil1-dev
sudo apt-get install -y libcurl4-openssl-dev 
sudo gem install  --version '=3.0.18' passenger 
sudo passenger-install-apache2-module --auto
echo "LoadModule passenger_module /var/lib/gems/1.9.1/gems/passenger-3.0.18/ext/apache2/mod_passenger.so" | sudo tee -a /etc/apache2/apache2.conf
echo "PassengerRoot /var/lib/gems/1.9.1/gems/passenger-3.0.18" | sudo tee -a /etc/apache2/apache2.conf
echo "PassengerRuby /usr/bin/ruby1.9.1" | sudo tee -a /etc/apache2/apache2.conf
sudo apt-get install openssh-client
sudo apt-get install openssh-server
sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.original
sudo chmod a-w /etc/ssh/sshd_config.original

sudo cp 000-default /etc/apache2/sites-enabled/
sudo service apache2 restart
mysqladmin -u root password $my_password #Mysql Password
sudo service mysql restart

yes | sudo apt-get install python-pip
yes | sudo pip install xlrd --upgrade
