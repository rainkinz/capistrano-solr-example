#
# vi: set ft=ruby :

BOX_NAME="trusty64"
BOX_URL="http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"

Vagrant.configure("2") do |config|
  config.vm.box = BOX_NAME
  config.vm.box_url = BOX_URL
  config.vm.network :forwarded_port, guest: 8983, host: 8983
  # config.vm.network "private_network", type: "dhcp"
  config.vm.network "private_network", ip: "172.28.128.3"

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
  end
end
