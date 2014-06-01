#
# Cookbook Name:: docker-demo
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'docker'
# Pull latest image
docker_image 'google/docker-registry'
# Run container exposing ports
docker_container 'google/docker-registry' do
  detach true
  port '5000:5000'
  env 'SETTINGS_FLAVOR=local'
  volume '/mnt/docker:/docker-storage'
end

# Login to private registry
#docker_registry '107.170.20.251:5000' do
#      username ''
#      password ''
#end

# Pull tagged image
docker_image '107.170.20.251:5000/roshan-jenkins3' do
  tag 'latest'
end

# Run container
docker_container 'docker-registry'

# Save current timestamp
timestamp = Time.new.strftime('%Y%m%d%H%M')

# Commit container changes
docker_container 'docker_registry' do
    repository 'google'
    tag timestamp
    action :commit
end

# Push image
docker_image 'roshan4074/docker-registry' do
  repository 'roshan4074'
  tag timestamp
  action :push
end





