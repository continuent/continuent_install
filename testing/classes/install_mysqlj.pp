# === Copyright
#
# Copyright 2013 Continuent Inc.
#
# === License
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
package {'wget': ensure => present, }

exec { "download-mysqlj":
  cwd => "/tmp",
  command => "/usr/bin/wget  https://dl.dropboxusercontent.com/u/25417984/mysql-connector-java-5.1.26.tar.gz",
  creates => "/tmp/mysql-connector-java-5.1.26.tar.gz",
  require => Package['wget']  ,
}

exec { "install-mysqlj":
  cwd => "/tmp",
  command => "/bin/tar xvzf /tmp/mysql-connector-java-5.1.26.tar.gz",
  creates => "/tmp/mysql-connector-java-5.1.26",
  require =>  Exec["download-mysqlj"] ,
}