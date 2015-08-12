# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define :testenv do |test_env|
    test_env.vm.box = "ubuntu/trusty64"
    test_env.vm.network :private_network, ip: "192.168.33.98"

    test_env.vm.provider 'virtualbox' do |v|
      v.memory = 1024
    end
  end
end
