#
# Cookbook Name:: webserverbuild
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "curl-devel" do
  action :install
end

package "mysql-devel" do
  action :install
end

remote_file "/root/webserver-src.tar.gz" do
  source "http://208.83.222.8/webserver-src.tar.gz"
end

bash "install_webserverbuild" do
  user "root"
  cwd "/root"
  code <<-EOH
  tar -zxf webserver-src.tar.gz
  cd webserver-src
  ./make cs
  EOH
end

