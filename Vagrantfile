Vagrant.configure("2") do |config|
  config.vm.define "mssql" do |mssql|
  mssql.vm.box = "ubuntu/xenial64"
  mssql.vm.hostname="mssql"
  # mssql.vm.network "public_network"
  mssql.vm.network "private_network", ip: "192.168.33.10"
  mssql.vm.provision "shell", path: "provision.sh"
  end
  config.vm.provider "virtualbox" do |vb|
    vb.memory="3500"
  end
end
