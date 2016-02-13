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
    module DeviceAllocationApiV1
      
      # 
      class CollectionResponseDeviceAllocation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DeviceAllocationApiV1::DeviceAllocation>]
        attr_accessor :items
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class DeviceAllocation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `allocate_date`
        # @return [DateTime]
        attr_accessor :allocate_date
      
        # 
        # Corresponds to the JSON property `alocated_by`
        # @return [String]
        attr_accessor :alocated_by
      
        # 
        # Corresponds to the JSON property `devices`
        # @return [Google::Apis::DeviceAllocationApiV1::Devices]
        attr_accessor :devices
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `modified_date`
        # @return [DateTime]
        attr_accessor :modified_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allocate_date = args[:allocate_date] if args.key?(:allocate_date)
          @alocated_by = args[:alocated_by] if args.key?(:alocated_by)
          @devices = args[:devices] if args.key?(:devices)
          @id = args[:id] if args.key?(:id)
          @modified_date = args[:modified_date] if args.key?(:modified_date)
        end
      end
      
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
