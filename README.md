Puppet GitLab module
==============
(WORK IN PROGRESS)

Installs GitLab 6.5. Tested on CentOS 6.5

Vagrant / Virtualbox
--------------
Built and tested using Vagrant 1.5.4 and Virtualbox 4.3.10

Cloning / Submodules
--------------
This repo uses submodules (/modules) which also need to be cloned. After cloning this repo, change into your top-level directory and be sure to run:

git submodule update --init --recursive


Upgrading
--------------
Warning: Upgrading an existing puppet-gitlab install has not been tested, and will most likely break something. I recommend setting up a new instance and migrating the data across.

Testing
--------------
I use vagrant for testing. Once running `vagrant up`, gitlab should be accessible at 192.168.33.12, or whatever IP address is in the Vagrantfile.

Dependencies
--------------
* [puppet-module-epel](https://github.com/stahnma/puppet-module-epel)
* [puppet-rvm](https://github.com/blt04/puppet-rvm)
* [puppetlabs-mysql](https://github.com/puppetlabs/puppetlabs-mysql)
* [puppetlabs-vcsrepo](https://github.com/puppetlabs/puppetlabs-vcsrepo)
* [puppetlabs-nginx](https://github.com/puppetlabs/puppetlabs-nginx)

Optional
* [puppetlabs-postgresql](https://forge.puppetlabs.com/puppetlabs/postgresql)

License
-------------
Copyright 2013 Lee Boynton

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
