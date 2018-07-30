# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "mayflower/trusty64-puppet3"

  # Run setup script to change the kernel version
  config.vm.provision "shell", path: "setup.sh"

  # Run install dependencies script to setup required env 
  config.vm.provision "shell", path: "install_deps.sh"
  
  # Copy required files
  config.vm.provision "file", source: ".vimrc", destination: ".vimrc"
  config.vm.provision "file", source: ".git-completion.bash", destination: ".git-completion.bash"

  # Perform post deps installation tasks
  config.vm.provision "shell", path: "post_deps.sh"

end
