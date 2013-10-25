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
class { 'continuent_install' :
      nodeHostName                => 'east-db1' ,
      nodeIpAddress               => "${::ipaddress}" ,
      hostsFile                  => ["${::ipaddress} east-db1",'10.0.0.6 north-db1','10.0.0.7 north-db2','192.168.0.146 east-db2','192.168.0.147 west-db1','192.168.0.148 west-db2'],
      connectorJDownload         => 'https://dl.dropboxusercontent.com/u/25417984/'    ,
      installMysql              => false
}


