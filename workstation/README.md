# workstation

TODO: Enter the cookbook description here.

cat /etc/motd
sudo chef-client -z -r "recipe[workstation]"
cookbook_file contains just static content(not dinamic like in template)
ex: cookbook_file 'path' do
        source 'index.txt'
    end

remote_file is sourcing a file to the server and it's 'renaiming it like img.jpg'
remote_file '/home/cin/Desktop/chef /cookbooks/workstation/img.jpg' do
    source 'https://image.freepik.com/free-vector/shining-circle-purple-lighting-isolated-dark-background_1441-2396.jpg'
end

execute - used to execute some scripts inside ruby code

notification is hte ability of all resources
example is changed the config file of a service and i have to notify another service to restart itself