default['clickhouse']['user'] = 'clickhouse'
default['clickhouse']['group'] = 'clickhouse'

default['clickhouse']['server']['version'] = '20.9.2.20'

# Override config.xml Chef template resource `cookbook` location.
# Useful in wrapping cookbooks.
default['clickhouse']['server']['configuration']['cookbook'] = 'clickhouse'

# Override users.xml Chef template resource `cookbook` location.
# Useful in wrapping cookbooks.
default['clickhouse']['server']['users']['cookbook'] = 'clickhouse'

# Override zookeeper-servers.xml Chef template resource `cookbook` location.
# Useful in wrapping cookbooks.
default['clickhouse']['server']['zookeeper']['cookbook'] = 'clickhouse'

# Override macros.xml Chef template resource `cookbook` location.
# Useful in wrapping cookbooks.
default['clickhouse']['server']['macros']['cookbook'] = 'clickhouse'

# Override remote_servers.xml Chef template resource `cookbook` location.
# Useful in wrapping cookbooks.
default['clickhouse']['server']['remote_servers']['cookbook'] = 'clickhouse'

# Override compression.xml Chef template resource `cookbook` location.
# Useful in wrapping cookbooks.
default['clickhouse']['server']['compression']['cookbook'] = 'clickhouse'
