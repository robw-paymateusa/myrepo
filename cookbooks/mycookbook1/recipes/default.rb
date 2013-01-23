#
# Cookbook Name:: mycookbook1
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

rightscale_marker :begin

log "Hello World! You should try Chef with RightScale!"
log "Goodbye World! Are any changes making it through?"

remote_file "/root/httpd-2.2.23.tar.gz" do
  source "http://download.nextag.com/apache/httpd/httpd-2.2.23.tar.gz"
end

rightscale_marker :end


