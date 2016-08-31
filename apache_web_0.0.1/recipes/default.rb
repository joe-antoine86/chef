#
# Cookbook Name:: apache_web
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package_name = "httpd"
service_name = "httpd"
doc_root = "/var/www/html"

package package_name do
  action :install
end

service service_name do
  action [:start, :enable]
end

#cookbook_file "#{doc_root}/index.html" do
#  source "index.html"
#  mode "0775"
#  owner "root"
#  group "root"
#  action :create
#end

template "#{doc_root}/index.html" do
  source "index.html.erb"
  mode "0775"
  owner "root"
  group "root"
  action :create
end