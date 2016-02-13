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
    module LocationApiV1
      
      # 
      class Location
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `accuracy`
        # @return [Float]
        attr_accessor :accuracy
      
        # 
        # Corresponds to the JSON property `deviceId`
        # @return [String]
        attr_accessor :device_id
      
        # 
        # Corresponds to the JSON property `extra`
        # @return [String]
        attr_accessor :extra
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `latitude`
        # @return [Float]
        attr_accessor :latitude
      
        # 
        # Corresponds to the JSON property `longitude`
        # @return [Float]
        attr_accessor :longitude
      
        # 
        # Corresponds to the JSON property `time`
        # @return [String]
        attr_accessor :time
      
        # 
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accuracy = args[:accuracy] if args.key?(:accuracy)
          @device_id = args[:device_id] if args.key?(:device_id)
          @extra = args[:extra] if args.key?(:extra)
          @id = args[:id] if args.key?(:id)
          @latitude = args[:latitude] if args.key?(:latitude)
          @longitude = args[:longitude] if args.key?(:longitude)
          @time = args[:time] if args.key?(:time)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # 
      class LocationMonkey
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `locationList`
        # @return [Array<Google::Apis::LocationApiV1::Location>]
        attr_accessor :location_list
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location_list = args[:location_list] if args.key?(:location_list)
        end
      end
    end
  end
end
