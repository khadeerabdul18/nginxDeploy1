#
# Cookbook:: nginxDeploy1
# Recipe:: default
execute "update-upgrade" do
  command "docker build -t="makbaig/test_nginx_image" . &"
  action :run
end

