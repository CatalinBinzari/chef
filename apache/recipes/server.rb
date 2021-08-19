#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2021, The Authors, All Rights Reserved.

# service 'apache2' do
#     action :start
# end


file '/var/www/html/index.html' do
    content '<h1>Heelow</h1>'
end

package 'tree' do
    action :install
end

package 'ntp'

package 'git' do
    action :install
end

# service 'httpd' do
#     action [ :enable, :start]
# end

