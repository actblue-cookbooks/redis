# Override this if you build your own package
default['redis']['package_version'] = nil

# By default, listen on all interfaces. Set to an IP address to only listen on that address.
default['redis']['config']['bind'] = nil
# Set to 0 to disable TCP
default['redis']['config']['port'] = 6379
# By default, disable unix socket. Set to a path (e.g. /var/run/redis/redis.sock) to enable.
default['redis']['config']['unixsocket'] = nil
default['redis']['config']['unixsocketperm'] = 755
# Other config options
default['redis']['config']['timeout'] = nil
default['redis']['config']['tcp_keepalive'] = nil
default['redis']['config']['loglevel'] = 'notice'
default['redis']['config']['logfile'] = '/var/log/redis/redis-server.log'
default['redis']['config']['syslog']['enabled'] = false
default['redis']['config']['syslog']['ident'] = 'redis'
default['redis']['config']['syslog']['facility'] = 'local0'
default['redis']['config']['databases'] = 16
default['redis']['config']['save'] = { 900 => 1, 300 => 10, 60 => 10000 }
default['redis']['config']['stop_writes_on_bgsave_error'] = true
default['redis']['config']['rdbcompression'] = true
default['redis']['config']['rdbchecksum'] = true
default['redis']['config']['dbfilename'] = 'dump.rdb'
default['redis']['config']['dir'] = '/var/lib/redis'
default['redis']['config']['repl']['ip'] = nil
default['redis']['config']['repl']['port'] = nil
default['redis']['config']['repl']['auth'] = nil
default['redis']['config']['repl']['serve_stale_data'] = true
default['redis']['config']['repl']['read_only'] = true
default['redis']['config']['repl']['ping'] = 10
default['redis']['config']['repl']['timeout'] = 60
default['redis']['config']['repl']['disable_tcp_nodelay'] = false
default['redis']['config']['repl']['backlog_size'] = '1mb'
default['redis']['config']['repl']['backlog_ttl'] = 3600
default['redis']['config']['repl']['priority'] = 100
default['redis']['config']['repl']['min_writes'] = nil
default['redis']['config']['repl']['max_lag'] = 10
default['redis']['config']['requirepass'] = nil
default['redis']['config']['rename_commands'] = {}
default['redis']['config']['maxclients'] = nil
default['redis']['config']['maxmemory'] = nil
default['redis']['config']['maxmemory_policy'] = 'volatile-lru'
default['redis']['config']['maxmemory_samples'] = 3
default['redis']['config']['appendonly'] = false
default['redis']['config']['appendfilename'] = 'appendonly.aof'
default['redis']['config']['appendfsync'] = 'everysec'
default['redis']['config']['no_appendfsync_on_rewrite'] = false
default['redis']['config']['auto_aof_rewrite_percentage'] = 100
default['redis']['config']['auto_aof_rewrite_min_size'] = '64mb'
default['redis']['config']['lua_time_limit'] = 5000
default['redis']['config']['slowlog_log_slower_than'] = 10000
default['redis']['config']['slowlog_max_len'] = 128
default['redis']['config']['hash_max_ziplist_entries'] = 512
default['redis']['config']['hash_max_ziplist_value'] = 64
default['redis']['config']['list_max_ziplist_entries'] = 512
default['redis']['config']['list_max_ziplist_value'] = 64
default['redis']['config']['set_max_intset_entries'] = 512
default['redis']['config']['zset_max_ziplist_entries'] = 128
default['redis']['config']['zset_max_ziplist_value'] = 64
default['redis']['config']['activerehashing'] = true
default['redis']['config']['client_output_buffer_limit']['normal'] = '0 0 0'
default['redis']['config']['client_output_buffer_limit']['repl'] = '256mb 64mb 60'
default['redis']['config']['client_output_buffer_limit']['pubsub'] = '32mb 8mb 60'
default['redis']['config']['hz'] = 10
default['redis']['config']['aof_rewrite_incremental_fsync'] = true
