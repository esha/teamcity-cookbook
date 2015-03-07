#
# Cookbook Name:: esha-teamcity
# Recipe:: agent
#

include_recipe 'awscli'
include_recipe 'cfcli'
include_recipe 'git'
include_recipe 'java'

java_certificate 'esha-teamcity-server' do
  ssl_endpoint node['esha']['teamcity']['server']['endpoint']
  action :install
end

include_recipe 'teamcity::agent'
