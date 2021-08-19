#
# Cookbook:: .
# Recipe:: execute
#
# Copyright:: 2021, The Authors, All Rights Reserved.

bash "inline script" do
    user "root"
    code "mkdir -p /var/chef-dir"
    not_if '[ -d /var/chef-dir/ ]' #if it's a directory
    #or you can use ruby block to verify it
    # not_if do
    #     File.directory?('/var/chef-dir/')
    # end
    # only_if
end

execute "run a script" do
    user "root"
    command <<-EOH
    mkdir -p /var/chef-dir-2/
    EOH
    # not if ...
end

# execute "run a script" do
#     user "root"
#     command './myscript.sh'
#     # not if ...
# end

user 'user1' do
    comment 'user1'
    uid '199'
    home '/home/user1'
    shell '/bin/bash'
end

#create a group and adds member to it
group 'admins' do
    members 'user1'
    append true
end