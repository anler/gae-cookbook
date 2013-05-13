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
