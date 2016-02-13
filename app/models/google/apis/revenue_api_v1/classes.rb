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
    module RevenueApiV1
      
      # 
      class CollectionResponseRevenue
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::RevenueApiV1::Revenue>]
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
      class Ministries
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
      class Revenue
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `amount`
        # @return [Float]
        attr_accessor :amount
      
        # 
        # Corresponds to the JSON property `flag`
        # @return [String]
        attr_accessor :flag
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `ministries`
        # @return [Google::Apis::RevenueApiV1::Ministries]
        attr_accessor :ministries
      
        # 
        # Corresponds to the JSON property `revenueCode`
        # @return [String]
        attr_accessor :revenue_code
      
        # 
        # Corresponds to the JSON property `revenueGroup`
        # @return [Google::Apis::RevenueApiV1::RevenueGroup]
        attr_accessor :revenue_group
      
        # 
        # Corresponds to the JSON property `revenueStream`
        # @return [Google::Apis::RevenueApiV1::RevenueStream]
        attr_accessor :revenue_stream
      
        # 
        # Corresponds to the JSON property `revenueSubgroup`
        # @return [Google::Apis::RevenueApiV1::RevenueSubgroup]
        attr_accessor :revenue_subgroup
      
        # 
        # Corresponds to the JSON property `revenueType`
        # @return [Google::Apis::RevenueApiV1::RevenueType]
        attr_accessor :revenue_type
      
        # 
        # Corresponds to the JSON property `revenueUnits`
        # @return [Google::Apis::RevenueApiV1::RevenueUnits]
        attr_accessor :revenue_units
      
        # 
        # Corresponds to the JSON property `subCountyGroups`
        # @return [Google::Apis::RevenueApiV1::SubCountyGroups]
        attr_accessor :sub_county_groups
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount = args[:amount] if args.key?(:amount)
          @flag = args[:flag] if args.key?(:flag)
          @id = args[:id] if args.key?(:id)
          @ministries = args[:ministries] if args.key?(:ministries)
          @revenue_code = args[:revenue_code] if args.key?(:revenue_code)
          @revenue_group = args[:revenue_group] if args.key?(:revenue_group)
          @revenue_stream = args[:revenue_stream] if args.key?(:revenue_stream)
          @revenue_subgroup = args[:revenue_subgroup] if args.key?(:revenue_subgroup)
          @revenue_type = args[:revenue_type] if args.key?(:revenue_type)
          @revenue_units = args[:revenue_units] if args.key?(:revenue_units)
          @sub_county_groups = args[:sub_county_groups] if args.key?(:sub_county_groups)
        end
      end
      
      # 
      class RevenueGroup
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
      class RevenueStream
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
      class RevenueSubgroup
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `narrative`
        # @return [String]
        attr_accessor :narrative
      
        # 
        # Corresponds to the JSON property `revenueGroup`
        # @return [Google::Apis::RevenueApiV1::RevenueGroup]
        attr_accessor :revenue_group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @narrative = args[:narrative] if args.key?(:narrative)
          @revenue_group = args[:revenue_group] if args.key?(:revenue_group)
        end
      end
      
      # 
      class RevenueType
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
      class RevenueUnits
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
    end
  end
end
