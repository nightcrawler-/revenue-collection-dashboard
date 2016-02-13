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
    module WardsApiV1
      
      # 
      class CollectionResponseWards
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::WardsApiV1::Wards>]
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
      class SubCountyGroups
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class Wards
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `county_code`
        # @return [String]
        attr_accessor :county_code
      
        # 
        # Corresponds to the JSON property `create_date`
        # @return [DateTime]
        attr_accessor :create_date
      
        # 
        # Corresponds to the JSON property `created_by`
        # @return [String]
        attr_accessor :created_by
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `modified_date`
        # @return [DateTime]
        attr_accessor :modified_date
      
        # 
        # Corresponds to the JSON property `subCountyGroups`
        # @return [Google::Apis::WardsApiV1::SubCountyGroups]
        attr_accessor :sub_county_groups
      
        # 
        # Corresponds to the JSON property `ward_name`
        # @return [String]
        attr_accessor :ward_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @county_code = args[:county_code] if args.key?(:county_code)
          @create_date = args[:create_date] if args.key?(:create_date)
          @created_by = args[:created_by] if args.key?(:created_by)
          @id = args[:id] if args.key?(:id)
          @modified_date = args[:modified_date] if args.key?(:modified_date)
          @sub_county_groups = args[:sub_county_groups] if args.key?(:sub_county_groups)
          @ward_name = args[:ward_name] if args.key?(:ward_name)
        end
      end
    end
  end
end
