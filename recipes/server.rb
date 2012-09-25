#
# Cookbook Name:: redis
# Recipe:: server
#
# Copyright 2010, Atari, Inc
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

apt_repository "redis-backport" do
  uri node[:redis][:backport][:repo]
  key node[:redis][:backport][:key]
  keyserver "keyserver.ubuntu.com"
  distribution "lucid"
  components ["main"]
  action :add
  not_if { node[:redis][:backport][:repo].nil? or node[:redis][:backport][:key].nil? }
end

package "redis" do
  package_name "redis-server"
  action node[:redis][:action]
end

service "redis" do
  service_name "redis-server"
  supports :status => false, :restart => true
  action :enable
end

template "/etc/redis/redis.conf" do
  source "redis.conf.erb"
  owner "root"
  group "root"
  mode "644"
  variables node[:redis]
  notifies :restart, resources(:service => "redis")
end

service "redis" do
  action :start
end
