IMAGE_NAME = "centos/7"

Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |v|
     v.memory = 4096
     v.cpus = 2
  end

  config.vm.define "jenkins" do |host|
     host.vm.box = IMAGE_NAME
     host.vm.hostname = "jenkins"
     host.vm.network "private_network" , ip: "10.0.1.10"
     host.vm.provision "ansible" do |ansible|
          ansible.playbook = "jinstall-playbook.yml"
     end
  end
end
