#
# Cookbook Name:: docker-demo
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
with_provisioner ChefMetalDocker::DockerProvisioner.new
#num_dbservers = 2

machine 'mongodb_host' do
  provisioner_options 'base_image' => 'ubuntu:latest'
  recipe 'build-essential'
  recipe 'openssh'
  recipe 'docker-demo::supervisor'
  recipe 'mongodb::install'
  action :create_image
end

#1.upto(num_dbservers) do |i|
#  machine "mongodb#{i}" do
#    provisioner_options 'base_image' => 'ubuntu:latest',
#      'command' => 'supervisor -n'
#    recipe 'mongodb::replicaset'
#  end
#end



