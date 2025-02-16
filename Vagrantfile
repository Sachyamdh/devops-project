Vagrant.configure("2") do |config|
  
  config.vm.define "masterk3s" do |masterk3s|
    masterk3s.vm.box_download_insecure = true
    masterk3s.vm.box = "centos/7"        # For Ubuntu 18.04 use - hashicorp/bionic64
    masterk3s.vm.network "private_network", ip: "192.168.56.10"
    masterk3s.vm.hostname = "masterk3s"
    masterk3s.vm.provider "vmware_desktop" do |v|
      v.vmx["displayName"] = "masterk3s"
      v.vmx["memsize"] = "2048"
      v.vmx["numvcpus"] = "2"
    end
  end

  config.vm.define "workerk3s" do |workerk3s|
    workerk3s.vm.box_download_insecure = true
    workerk3s.vm.box = "centos/7"        # For Ubuntu 18.04 use - hashicorp/bionic64
    workerk3s.vm.network "private_network", ip: "192.168.56.20"
    workerk3s.vm.hostname = "workerk3s"
    workerk3s.vm.provider "vmware_desktop" do |v|
      v.vmx["displayName"] = "workerk3s"
      v.vmx["memsize"] = "2048"
      v.vmx["numvcpus"] = "2"
    end
  end

#  config.vm.define "rancher" do |rancher|
#    rancher.vm.box_download_insecure = true
#    rancher.vm.box = "centos/7"        # For Ubuntu 18.04 use - hashicorp/bionic64
#    rancher.vm.network "private_network", ip: "192.168.56.30"
#    rancher.vm.network "forwarded_port", guest: 80, host: 84
#    rancher.vm.network "forwarded_port", guest: 443, host: 7443
#    rancher.vm.hostname = "rancher"
#    rancher.vm.provider "vmware_desktop" do |v|
#      v.vmx["displayName"] = "rancher"
#      v.vmx["memsize"] = "2048"
#      v.vmx["numvcpus"] = "2"
#    end
#  end

end
