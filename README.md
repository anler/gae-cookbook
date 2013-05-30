Google App Engine Cookbook
==========================

Description
-----------

Install and configure Google App Engine SDK for Python.

Requirements
------------

### Platform

* Debian, Ubuntu
* CentOS, Red Hat, Fedora

Attributes
----------

See ``attributes/default.rb`` for more details.

* ``node["gae"]["version"]`` - Which version of the SDK to install, default is **1.8.0**
* ``node["gae"]["url"]`` - URL to download the SDK files, default is Google Servers.
* ``node["gae"]["prefix_dir"]`` - Where to store SDK files in the filesystem, default is ``/opt``

License and Author
------------------

Author:: Anler (anler@floqq.com)

Copyright:: 2013, Floqq innovation SL.

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
