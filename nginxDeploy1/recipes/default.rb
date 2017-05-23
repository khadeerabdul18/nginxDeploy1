#
# Cookbook:: nginxDeploy1
# Recipe:: default
execute "update-upgrade" do
  command "apt-get update && apt-get upgrade -y"
  action :run
end

execute "uptime" do 
  command "uptime && top"
  action :run
end

package 'nginx' do
  action :install
end

service 'nginx' do
  action [ :enable, :start ]
end

cookbook_file "/usr/share/nginx/www/index.html" do
  source "index.html"
  mode "0644"
end
# Copyright:: 2017, The Authors, All Rights Reserved.
