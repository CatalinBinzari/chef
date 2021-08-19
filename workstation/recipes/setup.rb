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
