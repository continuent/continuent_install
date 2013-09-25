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
module Puppet::Parser::Functions
  newfunction(:generateServerId, :type => :rvalue) do |args|
    ip = args[0]


    if ip == nil
      raise Puppet::ParseError, 'No Ip Passed'
    end

    serverId = ip.split('.').inject(0) {|total,value| (total << 8 ) + value.to_i}

    serverId
  end
end