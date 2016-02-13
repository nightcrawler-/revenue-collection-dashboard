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
    module BackboneApiV1
      
      # 
      class Stats
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `totalPaymentModes`
        # @return [String]
        attr_accessor :total_payment_modes
      
        # 
        # Corresponds to the JSON property `totalRevenueSubgroups`
        # @return [String]
        attr_accessor :total_revenue_subgroups
      
        # 
        # Corresponds to the JSON property `totalRevenues`
        # @return [String]
        attr_accessor :total_revenues
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @total_payment_modes = args[:total_payment_modes] if args.key?(:total_payment_modes)
          @total_revenue_subgroups = args[:total_revenue_subgroups] if args.key?(:total_revenue_subgroups)
          @total_revenues = args[:total_revenues] if args.key?(:total_revenues)
        end
      end
    end
  end
end
