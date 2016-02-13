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
    module PaymentApiV1
      
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
      class CollectionResponsePayment
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::PaymentApiV1::Payment>]
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
      class Payment
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `amount`
        # @return [Float]
        attr_accessor :amount
      
        # 
        # Corresponds to the JSON property `amountReceived`
        # @return [Float]
        attr_accessor :amount_received
      
        # 
        # Corresponds to the JSON property `balance`
        # @return [Float]
        attr_accessor :balance
      
        # 
        # Corresponds to the JSON property `devices`
        # @return [Google::Apis::PaymentApiV1::Devices]
        attr_accessor :devices
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `narration`
        # @return [String]
        attr_accessor :narration
      
        # 
        # Corresponds to the JSON property `pUserId`
        # @return [Fixnum]
        attr_accessor :p_user_id
      
        # 
        # Corresponds to the JSON property `paymentMode`
        # @return [Google::Apis::PaymentApiV1::PaymentMode]
        attr_accessor :payment_mode
      
        # 
        # Corresponds to the JSON property `receiptNumber`
        # @return [String]
        attr_accessor :receipt_number
      
        # 
        # Corresponds to the JSON property `revenue`
        # @return [Google::Apis::PaymentApiV1::Revenue]
        attr_accessor :revenue
      
        # 
        # Corresponds to the JSON property `transaction_date`
        # @return [DateTime]
        attr_accessor :transaction_date
      
        # 
        # Corresponds to the JSON property `users`
        # @return [Google::Apis::PaymentApiV1::Users]
        attr_accessor :users
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount = args[:amount] if args.key?(:amount)
          @amount_received = args[:amount_received] if args.key?(:amount_received)
          @balance = args[:balance] if args.key?(:balance)
          @devices = args[:devices] if args.key?(:devices)
          @id = args[:id] if args.key?(:id)
          @narration = args[:narration] if args.key?(:narration)
          @p_user_id = args[:p_user_id] if args.key?(:p_user_id)
          @payment_mode = args[:payment_mode] if args.key?(:payment_mode)
          @receipt_number = args[:receipt_number] if args.key?(:receipt_number)
          @revenue = args[:revenue] if args.key?(:revenue)
          @transaction_date = args[:transaction_date] if args.key?(:transaction_date)
          @users = args[:users] if args.key?(:users)
        end
      end
      
      # 
      class PaymentMode
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
        # @return [Google::Apis::PaymentApiV1::Ministries]
        attr_accessor :ministries
      
        # 
        # Corresponds to the JSON property `revenueCode`
        # @return [String]
        attr_accessor :revenue_code
      
        # 
        # Corresponds to the JSON property `revenueGroup`
        # @return [Google::Apis::PaymentApiV1::RevenueGroup]
        attr_accessor :revenue_group
      
        # 
        # Corresponds to the JSON property `revenueStream`
        # @return [Google::Apis::PaymentApiV1::RevenueStream]
        attr_accessor :revenue_stream
      
        # 
        # Corresponds to the JSON property `revenueSubgroup`
        # @return [Google::Apis::PaymentApiV1::RevenueSubgroup]
        attr_accessor :revenue_subgroup
      
        # 
        # Corresponds to the JSON property `revenueType`
        # @return [Google::Apis::PaymentApiV1::RevenueType]
        attr_accessor :revenue_type
      
        # 
        # Corresponds to the JSON property `revenueUnits`
        # @return [Google::Apis::PaymentApiV1::RevenueUnits]
        attr_accessor :revenue_units
      
        # 
        # Corresponds to the JSON property `subCountyGroups`
        # @return [Google::Apis::PaymentApiV1::SubCountyGroups]
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
        # @return [Google::Apis::PaymentApiV1::RevenueGroup]
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
        # @return [Google::Apis::PaymentApiV1::CollectionCenterAllocation]
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
        # @return [Google::Apis::PaymentApiV1::UserRights]
        attr_accessor :user_rights
      
        # 
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        # 
        # Corresponds to the JSON property `wards`
        # @return [Google::Apis::PaymentApiV1::Wards]
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
        # @return [Google::Apis::PaymentApiV1::SubCountyGroups]
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
