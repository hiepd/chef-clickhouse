require_relative 'clickhouse_base'

class Chef
  class Resource
    # ClickHouse remote_servers configuration
    class ClickHouseRemoteServerConfig < ClickhouseBaseService
      provides(:clickhouse_remote_servers_config)

      # Service
      attribute(:service_name, kind_of: String, default: 'clickhouse-server')
      attribute(
        :config_name,
        kind_of: String,
        default: lazy do
          node['clickhouse']['server']['config']['remote_servers']['incl']
        end
      )
      # Whatever format
      attribute(:config)
    end
  end

  class Provider
    # ClickHouse remote_servers provider
    class ClickHouseRemoteServerConfig < ClickhouseBaseService
      provides(:clickhouse_remote_servers_config)

      def action_delete
        file remote_servers_config_path do
          action :delete
        end
      end

      protected

      def validate!
        super
        config = new_resource.config
        raise_error_msg 'config attribute is required' unless config
      end

      # rubocop:disable Metrics/AbcSize
      def deriver_install
        template remote_servers_config_path do
          source 'remote_servers.xml.erb'
          user new_resource.user
          group new_resource.group
          cookbook node['clickhouse']['server']['remote_servers']['cookbook']
          mode '0640'
          variables config: new_resource.config
        end
      end

      private

      def service_config_path
        ::File.join(new_resource.config_dir, new_resource.service_name)
      end

      def remote_servers_config_path
        ::File.join(service_config_path, "#{new_resource.config_name}.xml")
      end
    end
  end
end
