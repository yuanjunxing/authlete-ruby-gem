# :nodoc:
#
# Copyright (C) 2014-2018 Authlete, Inc.
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


module Authlete
  module Model
    module Response
      # == Authlete::Model::Response::DeveloperAuthenticationCallbackResponse class
      #
      # This class represents a response from a developer authentication callback endpoint.
      class DeveloperAuthenticationCallbackResponse
        include Authlete::Utility
        # True when the developer has been authenticated (= is a valid developer).
        attr_accessor :authenticated

        # The unique identifier of the developer.
        attr_accessor :subject

        # The display name of the developer.
        attr_accessor :displayName
        alias_method  :display_name,  :displayName
        alias_method  :display_name=, :displayName=

        # The constructor which takes a hash that represents a JSON response
        # from a developer authentication callback endpoint.
        def initialize(hash = {})
          @authenticated = extract_boolean_value(hash, :authenticated)
          @subject       = extract_value(hash, :subject)
          @displayName   = extract_value(hash, :displayName)
        end

        # Generate an array which is usable as a Rack response from this instance.
        def to_rack_response
          to_rack_response_json(200, JSON.generate(
            :authenticated => @authenticated,
            :subject       => @subject,
            :displayName   => @displayName
          ))
        end
      end
    end
  end
end