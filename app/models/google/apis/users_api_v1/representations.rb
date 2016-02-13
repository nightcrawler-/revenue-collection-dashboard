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
    module UsersApiV1
      
      class CollectionCenterAllocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CollectionResponseUsers
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SubCountyGroups
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class UserRights
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Users
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Wards
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CollectionCenterAllocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allocated_by, as: 'allocated_by'
          property :allocation_date, as: 'allocation_date', type: DateTime
      
          property :flag, as: 'flag'
          property :id, as: 'id'
          property :modification_date, as: 'modification_date', type: DateTime
      
          property :modified_by, as: 'modified_by'
          property :user_id, as: 'user_id'
        end
      end
      
      class CollectionResponseUsers
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::UsersApiV1::Users, decorator: Google::Apis::UsersApiV1::Users::Representation
      
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
      
      class UserRights
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :userrole, as: 'userrole'
        end
      end
      
      class Users
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :collection_center_allocation, as: 'collectionCenterAllocation', class: Google::Apis::UsersApiV1::CollectionCenterAllocation, decorator: Google::Apis::UsersApiV1::CollectionCenterAllocation::Representation
      
          property :created_by, as: 'created_by'
          property :date_created, as: 'date_created', type: DateTime
      
          property :date_modified, as: 'date_modified', type: DateTime
      
          property :email, as: 'email'
          property :firstname, as: 'firstname'
          property :id, as: 'id'
          property :isactive, as: 'isactive'
          property :mcp, as: 'mcp'
          property :middlename, as: 'middlename'
          property :mobile_num, as: 'mobile_num'
          property :national_id, as: 'national_id'
          property :password, as: 'password'
          property :password_attempts, as: 'passwordAttempts'
          property :postal_address, as: 'postal_address'
          property :postal_code, as: 'postal_code'
          property :secondname, as: 'secondname'
          property :user_rights, as: 'userRights', class: Google::Apis::UsersApiV1::UserRights, decorator: Google::Apis::UsersApiV1::UserRights::Representation
      
          property :username, as: 'username'
          property :wards, as: 'wards', class: Google::Apis::UsersApiV1::Wards, decorator: Google::Apis::UsersApiV1::Wards::Representation
      
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
      
          property :sub_county_groups, as: 'subCountyGroups', class: Google::Apis::UsersApiV1::SubCountyGroups, decorator: Google::Apis::UsersApiV1::SubCountyGroups::Representation
      
          property :ward_name, as: 'ward_name'
        end
      end
    end
  end
end
