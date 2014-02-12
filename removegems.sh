set -e
set -x
export DEBIAN_FRONTEND=noninteractive

gem list | cut -d" " -f1 | xargs sudo gem uninstall -aIx

sudo apt-get remove -y lamp-server^
sudo apt-get remove -y ruby*
sudo apt-get remove -y rails rubygems
sudo rm /etc/apache2/apache2.conf
sudo apt-get autoremove -y