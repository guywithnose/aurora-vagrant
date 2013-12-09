Vagrant.configure("2") do |config|
  config.vm.box = "saucy64"
  config.vm.provision :shell, :path => "provision.sh"
  config.vm.network "forwarded_port", guest: 80, host: 8085

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end
end
