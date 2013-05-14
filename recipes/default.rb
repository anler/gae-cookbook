#
# Author:: Anler (<anler@floqq.com>)
# Cookbook Name:: gae
# Attribute:: default
#
# Copyright 2013, Floqq innovation SL.
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

version = node['gae']['version']
gae_dir = "google_appengine"
gae_zip = "#{gae_dir}_#{version}.zip"
prefix = node['gae']['prefix_dir']
install_path = "#{prefix}/#{gae_dir}_#{version}"

remote_file "#{Chef::Config[:file_cache_path]}/#{gae_zip}" do
  source "#{node['gae']['url']}"
  mode "0644"
  not_if { ::File.exists?(install_path) }
end

package "gae - unzip" do
  action :install
  retries 3
end

bash "gae - place #{version} at #{install_path}" do
  cwd Chef::Config[:file_cache_path]
  code <<-EOF
  unzip #{gae_zip}
  (cp -r #{gae_dir} #{install_path})
  EOF
  not_if { ::File.exists?(install_path) }
end

bash "gae - fix sys path" do
  code <<-EOF
  echo "import dev_appserver" >> #{install_path}/google/__init__.py
  echo "dev_appserver.fix_sys_path()" >> #{install_path}/google/__init__.py
  EOF

  not_if do
    File.open("#{install_path}/google/__init__.py").read.include?("import dev_appserver")
  end
end

bash "gae - install" do
  code <<-EOF
  echo "export PATH=#{install_path}:$PATH
        export PYTHONPATH=#{install_path}:$PYTHONPATH" > #{install_path}/profile
  EOF
end

bash "gae - setup paths" do
  code <<-EOF
  echo "source #{install_path}/profile" >> /etc/bash.bashrc
  EOF

  not_if do
    File.open("/etc/bash.bashrc").read.include?("#{install_path}/profile")
  end
end
