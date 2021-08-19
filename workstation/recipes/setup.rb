# package 'vim-enchanced'

# package 'tree' do
#     action :delete
# end

# package 'ntp'

# package 'git' do
#     action :delete
# end


# template '/etc/motd' do
#     content "This server is the property of Chef
#     HOSTNAME: #{node['hostname']}
#     IPADDRESS: #{node['ipaddress']}
#     CPU: #{node['cpu']['0']['mhz']}
#     MEMORY: #{node['memory']['total']}"
#     action :create
#     owner 'root'
#     owner 'root'
# end

template '/etc/motd' do
    source 'motd.erb'
    variables(
        :name  => 'catalin'
    )
    action :create
    owner 'root'
    owner 'root'
end

# cookbook_file '/home/cin/Desktop/chef /cookbooks/workstation' do
#     source 'index.txt'
# end

remote_file '/home/cin/Desktop/chef /cookbooks/workstation/img.jpg' do
    source 'https://image.freepik.com/free-vector/shining-circle-purple-lighting-isolated-dark-background_1441-2396.jpg'
end
