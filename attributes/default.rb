# the name for the logstash instance, affects initscript names and other things
default['elkstack']['config']['logstash']['instance_name'] = 'server'
default['elkstack']['config']['logstash']['output_stdout'] = true

# enable logging with logstash using ELK stack
default['elkstack']['config']['agent']['enabled'] = true

# the name for an agent logstash instance, affects initscript names and other things
default['elkstack']['config']['logstash']['agent_name'] = 'agent'

# attempt to use lumberjack protocol for java agents?
default['elkstack']['config']['agent_protocol'] = 'tcp_udp' # could also be lumberjack

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

# default to not include iptables rules
default['elkstack']['config']['iptables']['enabled'] = false

# default to not include rackspace monitoring
default['elkstack']['config']['cloud_monitoring']['enabled'] = false

# default vhost stuff and SSL cert/key name
default['elkstack']['config']['site_name'] = 'kibana'

# redirect HTTP to HTTPS?
default['elkstack']['config']['kibana']['redirect'] = true

# default kibana username for basic auth over ssl
# (see kibana_ssl.rb for how to set a password using node.run_state)
default['elkstack']['config']['kibana']['username'] = 'kibana'

# default to generating a certificate, key, and htpassword file
default['elkstack']['config']['kibana']['prepare_ssl'] = true

# data bag for lumerjack certificate and key
default['elkstack']['config']['lumberjack_data_bag'] = 'lumberjack'

# should I restart logstash after applying a custom config file?
default['elkstack']['config']['restart_logstash_service'] = true

default['elkstack']['setuptools']['version'] = '36.6.0'

default['kibana']['java_webserver_port'] = 5601
