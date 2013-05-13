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

default['gae']['version'] = '1.7.4'
default['gae']['url'] = "https://googleappengine.googlecode.com/files/google_appengine_#{default['gae']['version']}.zip"

case platform
when "smartos"
  default['gae']['prefix_dir'] = '/opt/local'
else
  default['gae']['prefix_dir'] = '/usr/local'
end