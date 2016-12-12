#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
#
#
#Download and install the package 
package 'apache2' do
	package_name 'httpd'
	action :install
end

# Make sure the apache service is started
service 'apache2' do
	service_name 'httpd'
	action [:start, :enable]
end


