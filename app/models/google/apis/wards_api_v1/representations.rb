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
      
      class CollectionResponseWards
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SubCountyGroups
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Wards
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CollectionResponseWards
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::WardsApiV1::Wards, decorator: Google::Apis::WardsApiV1::Wards::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class SubCountyGroups
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class Wards
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :county_code, as: 'county_code'
          property :create_date, as: 'create_date', type: DateTime
      
          property :created_by, as: 'created_by'
          property :id, as: 'id'
          property :modified_date, as: 'modified_date', type: DateTime
      
          property :sub_county_groups, as: 'subCountyGroups', class: Google::Apis::WardsApiV1::SubCountyGroups, decorator: Google::Apis::WardsApiV1::SubCountyGroups::Representation
      
          property :ward_name, as: 'ward_name'
        end
      end
    end
  end
end
