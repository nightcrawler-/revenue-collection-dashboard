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
      
      # 
      class CollectionCenterAllocation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `allocated_by`
        # @return [String]
        attr_accessor :allocated_by
      
        # 
        # Corresponds to the JSON property `allocation_date`
        # @return [DateTime]
        attr_accessor :allocation_date
      
        # 
        # Corresponds to the JSON property `flag`
        # @return [String]
        attr_accessor :flag
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `modification_date`
        # @return [DateTime]
        attr_accessor :modification_date
      
        # 
        # Corresponds to the JSON property `modified_by`
        # @return [String]
        attr_accessor :modified_by
      
        # 
        # Corresponds to the JSON property `user_id`
        # @return [String]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allocated_by = args[:allocated_by] if args.key?(:allocated_by)
          @allocation_date = args[:allocation_date] if args.key?(:allocation_date)
          @flag = args[:flag] if args.key?(:flag)
          @id = args[:id] if args.key?(:id)
          @modification_date = args[:modification_date] if args.key?(:modification_date)
          @modified_by = args[:modified_by] if args.key?(:modified_by)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # 
      class CollectionResponseUsers
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::UsersApiV1::Users>]
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
      class UserRights
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `userrole`
        # @return [String]
        attr_accessor :userrole
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @userrole = args[:userrole] if args.key?(:userrole)
        end
      end
      
      # 
      class Users
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `collectionCenterAllocation`
        # @return [Google::Apis::UsersApiV1::CollectionCenterAllocation]
        attr_accessor :collection_center_allocation
      
        # 
        # Corresponds to the JSON property `created_by`
        # @return [String]
        attr_accessor :created_by
      
        # 
        # Corresponds to the JSON property `date_created`
        # @return [DateTime]
        attr_accessor :date_created
      
        # 
        # Corresponds to the JSON property `date_modified`
        # @return [DateTime]
        attr_accessor :date_modified
      
        # 
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # 
        # Corresponds to the JSON property `firstname`
        # @return [String]
        attr_accessor :firstname
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `isactive`
        # @return [String]
        attr_accessor :isactive
      
        # 
        # Corresponds to the JSON property `mcp`
        # @return [String]
        attr_accessor :mcp
      
        # 
        # Corresponds to the JSON property `middlename`
        # @return [String]
        attr_accessor :middlename
      
        # 
        # Corresponds to the JSON property `mobile_num`
        # @return [String]
        attr_accessor :mobile_num
      
        # 
        # Corresponds to the JSON property `national_id`
        # @return [String]
        attr_accessor :national_id
      
        # 
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # 
        # Corresponds to the JSON property `passwordAttempts`
        # @return [Fixnum]
        attr_accessor :password_attempts
      
        # 
        # Corresponds to the JSON property `postal_address`
        # @return [String]
        attr_accessor :postal_address
      
        # 
        # Corresponds to the JSON property `postal_code`
        # @return [String]
        attr_accessor :postal_code
      
        # 
        # Corresponds to the JSON property `secondname`
        # @return [String]
        attr_accessor :secondname
      
        # 
        # Corresponds to the JSON property `userRights`
        # @return [Google::Apis::UsersApiV1::UserRights]
        attr_accessor :user_rights
      
        # 
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        # 
        # Corresponds to the JSON property `wards`
        # @return [Google::Apis::UsersApiV1::Wards]
        attr_accessor :wards
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collection_center_allocation = args[:collection_center_allocation] if args.key?(:collection_center_allocation)
          @created_by = args[:created_by] if args.key?(:created_by)
          @date_created = args[:date_created] if args.key?(:date_created)
          @date_modified = args[:date_modified] if args.key?(:date_modified)
          @email = args[:email] if args.key?(:email)
          @firstname = args[:firstname] if args.key?(:firstname)
          @id = args[:id] if args.key?(:id)
          @isactive = args[:isactive] if args.key?(:isactive)
          @mcp = args[:mcp] if args.key?(:mcp)
          @middlename = args[:middlename] if args.key?(:middlename)
          @mobile_num = args[:mobile_num] if args.key?(:mobile_num)
          @national_id = args[:national_id] if args.key?(:national_id)
          @password = args[:password] if args.key?(:password)
          @password_attempts = args[:password_attempts] if args.key?(:password_attempts)
          @postal_address = args[:postal_address] if args.key?(:postal_address)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @secondname = args[:secondname] if args.key?(:secondname)
          @user_rights = args[:user_rights] if args.key?(:user_rights)
          @username = args[:username] if args.key?(:username)
          @wards = args[:wards] if args.key?(:wards)
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
        # @return [Google::Apis::UsersApiV1::SubCountyGroups]
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
