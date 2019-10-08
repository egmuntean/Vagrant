IMAGE_NAME = "centos/7"

Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |v|
     v.memory = 512 
     v.cpus = 1
    
  end

  config.vm.define "webprod" do |host|
     host.vm.box = IMAGE_NAME
     host.vm.hostname = "webprod"
     host.vm.network "private_network", ip: "10.0.1.3"
     
  end
end
