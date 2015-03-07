#
# Cookbook Name:: esha-teamcity
# Attribute:: default
#

default['esha']['teamcity']['server']['hostname'] = 'builds.esha.com'
default['esha']['teamcity']['server']['port']     = '443'
default['esha']['teamcity']['server']['endpoint'] = "#{node['esha']['teamcity']['server']['hostname']}:#{node['esha']['teamcity']['server']['port']}"

default['teamcity']['agents']['default']['server_url'] = "https://#{node['esha']['teamcity']['server']['endpoint']}/"
default['teamcity']['agents']['default']['system_properties']['agent.aws.path'] = 'aws'
default['teamcity']['agents']['default']['system_properties']['agent.cf.path']  = 'cf'
