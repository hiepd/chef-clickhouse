name 'clickhouse'
maintainer 'Vinted'
maintainer_email 'sre@vinted.com'
license 'MIT'
description 'Installs/Configures chef-clickhouse'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
issues_url 'https://github.com/hiepd/chef-clickhouse/issues'
source_url 'https://github.com/hiepd/chef-clickhouse'
version '0.8.1'
chef_version '>= 12.5' if respond_to?(:chef_version)

supports 'redhat'
supports 'centos'
supports 'ubuntu'
supports 'debian'

depends 'poise', '~> 2.8.2'
depends 'ulimit', '~> 1.0.0'
depends 'systemd', '~> 3.2.4'
