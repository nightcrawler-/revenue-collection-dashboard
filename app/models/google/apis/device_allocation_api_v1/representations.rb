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
      
      class CollectionResponseDeviceAllocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DeviceAllocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Devices
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CollectionResponseDeviceAllocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::DeviceAllocationApiV1::DeviceAllocation, decorator: Google::Apis::DeviceAllocationApiV1::DeviceAllocation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class DeviceAllocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allocate_date, as: 'allocate_date', type: DateTime
      
          property :alocated_by, as: 'alocated_by'
          property :devices, as: 'devices', class: Google::Apis::DeviceAllocationApiV1::Devices, decorator: Google::Apis::DeviceAllocationApiV1::Devices::Representation
      
          property :id, as: 'id'
          property :modified_date, as: 'modified_date', type: DateTime
      
        end
      end
      
      class Devices
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_date, as: 'create_date', type: DateTime
      
          property :created_by, as: 'created_by'
          property :device_make, as: 'device_make'
          property :device_name, as: 'device_name'
          property :device_status, as: 'device_status'
          property :device_type, as: 'device_type'
          property :id, as: 'id'
          property :modified_by, as: 'modified_by'
          property :modified_date, as: 'modified_date', type: DateTime
      
          property :serial_number, as: 'serial_number'
        end
      end
    end
  end
end
