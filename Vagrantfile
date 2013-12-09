Vagrant.configure("2") do |config|
  config.omnibus.chef_version = :latest
  config.berkshelf.enabled = true

  config.vm.box = "saucy64"
  config.vm.network "forwarded_port", guest: 80, host: 8085

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end

  config.vm.provision :chef_solo do |chef|
    chef.run_list = [
        "recipe[aurora]"
    ]
  end
end
