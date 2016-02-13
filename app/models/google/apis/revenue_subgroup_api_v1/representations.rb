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
    module RevenueSubgroupApiV1
      
      class CollectionResponseRevenueSubgroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class RevenueGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class RevenueSubgroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CollectionResponseRevenueSubgroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::RevenueSubgroupApiV1::RevenueSubgroup, decorator: Google::Apis::RevenueSubgroupApiV1::RevenueSubgroup::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class RevenueGroup
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
          property :revenue_group, as: 'revenueGroup', class: Google::Apis::RevenueSubgroupApiV1::RevenueGroup, decorator: Google::Apis::RevenueSubgroupApiV1::RevenueGroup::Representation
      
        end
      end
    end
  end
end
