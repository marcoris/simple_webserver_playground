Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu2004"
  config.vm.network "forwarded_port", guest: 80, host: 8081

  config.vm.synced_folder "src", "/var/www/html"

  config.vm.provision "shell", path: "setup.sh"
end
