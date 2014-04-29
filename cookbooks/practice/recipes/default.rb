#
# Cookbook Name:: practice
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template "/etc/yum.conf" do
  source "yum.conf"
end

template "/etc/resolve.conf" do
  source "resolve.conf"
end

