Google App Engine Cookbook
==========================

Description
-----------

Installs and configures Google App Engine.

Requirements
------------

### Platform

* Debian, Ubuntu
* CentOS, Red Hat, Fedora

Attributes
----------

See attributes/default.rb for default values.

* ``node["gae"]["version"]`` - which version of gae you want to install, default ``1.7.4``.
* ``node["gae"]["url"]`` - from where you want to download the installation files, default to Google Servers.


The file also contains the following attributes:

* platform specific locations and settings.
* source installation settings

License and Author
------------------

Author:: Anler (anler@floqq.com)

Copyright:: 2013, Floqq innovation SL.

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.