package 'redis-server' do
  version node['redis']['package_version'] if node['redis']['package_version']
end

template '/etc/redis/redis.conf' do
  helpers do
    def redis_bool(b)
      !!b ? 'yes' : 'no'
    end
    def redis_str(s)
      # safe to always quote, even if not needed. nil should produce "".
      '"' + s.to_s + '"'
    end
  end
  variables :conf => node['redis']['config']
  owner 'root'
  group 'root'
  mode '0644'
  notifies :restart, 'service[redis]'
end

service 'redis' do
  service_name 'redis-server'
  supports :status => false, :restart => true
  action [:enable, :start]
end
