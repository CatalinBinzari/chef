# apache

TODO: Enter the cookbook description here.

generate cookbook
    chef generate cookbook apache
generate recipe
    chef generate recipe server

run cookbook with
chef-client -z --runlist (or -r) "cookbook::recipe"
sudo chef-client -z -r "apache::server"
sudo chef-client -z -r "recipe[apache::server]"
sudo chef-client -z -r "recipe[apache::server],recipe[workstation::setup]"
ohai memory/total
ohai cpu/0/mhz

generate a template file: 
    chef generate template [path_to_cookbook] [name]
    chef generate template ./workstation  motd