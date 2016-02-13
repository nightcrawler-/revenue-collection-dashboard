# Copyright 2015 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module DevicesApiV1
      
      # 
      class Devices
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `create_date`
        # @return [DateTime]
        attr_accessor :create_date
      
        # 
        # Corresponds to the JSON property `created_by`
        # @return [String]
        attr_accessor :created_by
      
        # 
        # Corresponds to the JSON property `device_make`
        # @return [String]
        attr_accessor :device_make
      
        # 
        # Corresponds to the JSON property `device_name`
        # @return [String]
        attr_accessor :device_name
      
        # 
        # Corresponds to the JSON property `device_status`
        # @return [String]
        attr_accessor :device_status
      
        # 
        # Corresponds to the JSON property `device_type`
        # @return [String]
        attr_accessor :device_type
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `modified_by`
        # @return [String]
        attr_accessor :modified_by
      
        # 
        # Corresponds to the JSON property `modified_date`
        # @return [DateTime]
        attr_accessor :modified_date
      
        # 
        # Corresponds to the JSON property `serial_number`
        # @return [String]
        attr_accessor :serial_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_date = args[:create_date] if args.key?(:create_date)
          @created_by = args[:created_by] if args.key?(:created_by)
          @device_make = args[:device_make] if args.key?(:device_make)
          @device_name = args[:device_name] if args.key?(:device_name)
          @device_status = args[:device_status] if args.key?(:device_status)
          @device_type = args[:device_type] if args.key?(:device_type)
          @id = args[:id] if args.key?(:id)
          @modified_by = args[:modified_by] if args.key?(:modified_by)
          @modified_date = args[:modified_date] if args.key?(:modified_date)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
        end
      end
    end
  end
end
