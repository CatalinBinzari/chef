#
# Cookbook:: workstation
# Recipe:: notification
#
# Copyright:: 2021, The Authors, All Rights Reserved.

#notifies :action, 'resource[name]', :timer
#subscribes :action, 'resource[name]', :timer    # listens for a notification
#
# :debore, :delayed, :immediately

package 'httpd'

#restart the httpd service immediately if index.html chages its state
template '/var/www/html/index.html' do
    source 'index.html.erb'
#    notifies :restart, 'service[httpd]', :immediately
end

#listens to template resource and if it changes, restart the apache server
service 'httpd' do
    action [:enable, :start]
    # subscribes :restart, 'template[/var/www/html/index.html', :immediately
end
