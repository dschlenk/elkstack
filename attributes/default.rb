# the name for the logstash instance, affects initscript names and other things
default['elkstack']['config']['logstash']['instance_name'] = 'server'

# the name for an agent logstash instance, affects initscript names and other things
default['elkstack']['config']['logstash']['agent_name'] = 'agent'

# default to not running the cluster search recipe
default['elkstack']['config']['cluster'] = false

# Default to using rsyslog to deliver syslog messages to logstash.
# Other options are 'syslog-ng' or nil, which will leave logstash listening on
# port 5959 on 127.0.0.1 for syslog messages but nothing delivering messages
# there. You might want this if you're using something else to manage your
# syslog configuration.
default['elkstack']['config']['syslog_pkg'] = 'rsyslog'

# attempt to use performance cloud data disk
default['elkstack']['config']['data_disk']['disk_config_type'] = false

# enable elasticsearch backups?
default['elkstack']['config']['backups']['enabled'] = true

# setup a backup in cron.d?
default['elkstack']['config']['backups']['cron'] = true

# default to include iptables rules
default['elkstack']['config']['iptables'] = true

# default vhost stuff and SSL cert/key name
default['elkstack']['config']['site_name'] = 'kibana'

# redirect HTTP to HTTPS?
default['elkstack']['config']['kibana']['redirect'] = true

# default kibana username for basic auth over ssl
# (see kibana_ssl.rb for how to set a password using node.run_state)
default['elkstack']['config']['kibana']['username'] = 'kibana'

# data bag for lumerjack certificate and key
default['elkstack']['config']['lumberjack_data_bag'] = 'lumberjack'

# should I restart logstash after applying a custom config file?
default['elkstack']['config']['restart_logstash_service'] = true
