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
      
      class CollectionResponseRevenue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Ministries
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Revenue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class RevenueGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class RevenueStream
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class RevenueSubgroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class RevenueType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class RevenueUnits
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SubCountyGroups
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CollectionResponseRevenue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::RevenueApiV1::Revenue, decorator: Google::Apis::RevenueApiV1::Revenue::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Ministries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class Revenue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount, as: 'amount'
          property :flag, as: 'flag'
          property :id, as: 'id'
          property :ministries, as: 'ministries', class: Google::Apis::RevenueApiV1::Ministries, decorator: Google::Apis::RevenueApiV1::Ministries::Representation
      
          property :revenue_code, as: 'revenueCode'
          property :revenue_group, as: 'revenueGroup', class: Google::Apis::RevenueApiV1::RevenueGroup, decorator: Google::Apis::RevenueApiV1::RevenueGroup::Representation
      
          property :revenue_stream, as: 'revenueStream', class: Google::Apis::RevenueApiV1::RevenueStream, decorator: Google::Apis::RevenueApiV1::RevenueStream::Representation
      
          property :revenue_subgroup, as: 'revenueSubgroup', class: Google::Apis::RevenueApiV1::RevenueSubgroup, decorator: Google::Apis::RevenueApiV1::RevenueSubgroup::Representation
      
          property :revenue_type, as: 'revenueType', class: Google::Apis::RevenueApiV1::RevenueType, decorator: Google::Apis::RevenueApiV1::RevenueType::Representation
      
          property :revenue_units, as: 'revenueUnits', class: Google::Apis::RevenueApiV1::RevenueUnits, decorator: Google::Apis::RevenueApiV1::RevenueUnits::Representation
      
          property :sub_county_groups, as: 'subCountyGroups', class: Google::Apis::RevenueApiV1::SubCountyGroups, decorator: Google::Apis::RevenueApiV1::SubCountyGroups::Representation
      
        end
      end
      
      class RevenueGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class RevenueStream
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class RevenueSubgroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
          property :narrative, as: 'narrative'
          property :revenue_group, as: 'revenueGroup', class: Google::Apis::RevenueApiV1::RevenueGroup, decorator: Google::Apis::RevenueApiV1::RevenueGroup::Representation
      
        end
      end
      
      class RevenueType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class RevenueUnits
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class SubCountyGroups
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
    end
  end
end
