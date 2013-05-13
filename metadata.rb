maintainer        "Anler"
maintainer_email  "anler@floqq.com"
license           "Apache 2.0"
description       "Installs Google App Engine"
version           "1.0"

recipe "gae", "Installs Google App Engine"

%w{ debian ubuntu centos redhat fedora freebsd }.each do |os|
  supports os
end
