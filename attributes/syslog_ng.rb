default['elkstack']['syslog_ng']['index'] = '10'
# if you want to use a custom source or filter,
# you can create them in your wrapper and then change
# these attributes to point at them.
default['elkstack']['syslog_ng']['filter']['name'] = 'default'
default['elkstack']['syslog_ng']['source']['name'] = 's_sys'
# we're going to be using some stock sources not generated
# by the syslog-ng cookbook so we default to no source prefix
default['syslog_ng']['source_prefix'] = ''
