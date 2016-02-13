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
      
      class CollectionCenterAllocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CollectionResponsePayment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Devices
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Ministries
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Payment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PaymentMode
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
      
      class CollectionResponsePayment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::PaymentApiV1::Payment, decorator: Google::Apis::PaymentApiV1::Payment::Representation
      
          property :next_page_token, as: 'nextPageToken'
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
      
      class Ministries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class Payment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount, as: 'amount'
          property :amount_received, as: 'amountReceived'
          property :balance, as: 'balance'
          property :devices, as: 'devices', class: Google::Apis::PaymentApiV1::Devices, decorator: Google::Apis::PaymentApiV1::Devices::Representation
      
          property :id, as: 'id'
          property :narration, as: 'narration'
          property :payment_mode, as: 'paymentMode', class: Google::Apis::PaymentApiV1::PaymentMode, decorator: Google::Apis::PaymentApiV1::PaymentMode::Representation
      
          property :receipt_number, as: 'receiptNumber'
          property :revenue, as: 'revenue', class: Google::Apis::PaymentApiV1::Revenue, decorator: Google::Apis::PaymentApiV1::Revenue::Representation
      
          property :transaction_date, as: 'transaction_date', type: DateTime
      
          property :users, as: 'users', class: Google::Apis::PaymentApiV1::Users, decorator: Google::Apis::PaymentApiV1::Users::Representation
      
        end
      end
      
      class PaymentMode
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
          property :ministries, as: 'ministries', class: Google::Apis::PaymentApiV1::Ministries, decorator: Google::Apis::PaymentApiV1::Ministries::Representation
      
          property :revenue_code, as: 'revenueCode'
          property :revenue_group, as: 'revenueGroup', class: Google::Apis::PaymentApiV1::RevenueGroup, decorator: Google::Apis::PaymentApiV1::RevenueGroup::Representation
      
          property :revenue_stream, as: 'revenueStream', class: Google::Apis::PaymentApiV1::RevenueStream, decorator: Google::Apis::PaymentApiV1::RevenueStream::Representation
      
          property :revenue_subgroup, as: 'revenueSubgroup', class: Google::Apis::PaymentApiV1::RevenueSubgroup, decorator: Google::Apis::PaymentApiV1::RevenueSubgroup::Representation
      
          property :revenue_type, as: 'revenueType', class: Google::Apis::PaymentApiV1::RevenueType, decorator: Google::Apis::PaymentApiV1::RevenueType::Representation
      
          property :revenue_units, as: 'revenueUnits', class: Google::Apis::PaymentApiV1::RevenueUnits, decorator: Google::Apis::PaymentApiV1::RevenueUnits::Representation
      
          property :sub_county_groups, as: 'subCountyGroups', class: Google::Apis::PaymentApiV1::SubCountyGroups, decorator: Google::Apis::PaymentApiV1::SubCountyGroups::Representation
      
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
          property :revenue_group, as: 'revenueGroup', class: Google::Apis::PaymentApiV1::RevenueGroup, decorator: Google::Apis::PaymentApiV1::RevenueGroup::Representation
      
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
          property :collection_center_allocation, as: 'collectionCenterAllocation', class: Google::Apis::PaymentApiV1::CollectionCenterAllocation, decorator: Google::Apis::PaymentApiV1::CollectionCenterAllocation::Representation
      
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
          property :user_rights, as: 'userRights', class: Google::Apis::PaymentApiV1::UserRights, decorator: Google::Apis::PaymentApiV1::UserRights::Representation
      
          property :username, as: 'username'
          property :wards, as: 'wards', class: Google::Apis::PaymentApiV1::Wards, decorator: Google::Apis::PaymentApiV1::Wards::Representation
      
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
      
          property :sub_county_groups, as: 'subCountyGroups', class: Google::Apis::PaymentApiV1::SubCountyGroups, decorator: Google::Apis::PaymentApiV1::SubCountyGroups::Representation
      
          property :ward_name, as: 'ward_name'
        end
      end
    end
  end
end
