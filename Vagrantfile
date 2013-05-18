# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  # Where Buster will serve the tests from
  config.vm.network :forwarded_port, guest: 1111, host: 1111, auto_correct: false

  # For Salt
  config.vm.synced_folder "salt/roots", "/srv"

  config.vm.provision :salt do |salt|
    salt.run_highstate = true
    salt.minion_config = "salt/minion"
    salt.install_type = "git"
    salt.install_args = "v0.14.1"
    salt.install_master = false
    salt.bootstrap_script = "salt/bootstrap.sh"
    salt.verbose = false
  end

  config.vm.provision :shell do |shell|
    shell.inline = "cd /vagrant; npm install; bower install;"
  end
end
