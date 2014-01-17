name              "rackspace_build_essential"
maintainer        "Rackspace, US Inc."
maintainer_email  "rackspace-cookbooks@rackspace.com"
license           "Apache 2.0"
description       "Installs C compiler / build tools"
version           "2.0.0"
recipe            "rackspace_build_essential", "Installs packages required for compiling C software from source."

%w{ redhat centos ubuntu debian }.each do |os|
  supports os
end
