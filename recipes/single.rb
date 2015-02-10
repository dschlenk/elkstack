# Encoding: utf-8
#
# Cookbook Name:: elkstack
# Recipe:: single
#
# Copyright 2014, Rackspace
#

# base stack requirements for an all-in-one node
include_recipe 'elkstack::_server'

# include components
include_recipe 'elkstack::elasticsearch'
include_recipe 'elkstack::logstash'
include_recipe 'elkstack::kibana'

case node['elkstack']['config']['syslog_pkg']
when 'rsyslog'
  # see rsyslog attributes, will forward to logstash on localhost
  include_recipe 'rsyslog::client'
when 'syslog-ng'
  include_recipe 'syslog-ng::global'
  syslog_ng_forwarder "logstash_#{node['elkstack']['syslog_ng']['filter']['name']}" do
    index node['elkstack']['syslog_ng']['index']
    source_name node['elkstack']['syslog_ng']['source']['name']
    filter_name node['elkstack']['syslog_ng']['filter']['name']
    destination_host '127.0.0.1'
    destination_port '5959'
    destination_protocol 'tcp'
  end

else
  Chef::Log.info 'Not changing default syslog implementation/configuration.'
end
