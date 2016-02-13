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
    module UpdateManApiV1
      
      # 
      class CollectionResponseUpdateMan
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::UpdateManApiV1::UpdateMan>]
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
      class UpdateMan
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `notes`
        # @return [String]
        attr_accessor :notes
      
        # 
        # Corresponds to the JSON property `pos`
        # @return [Boolean]
        attr_accessor :pos
        alias_method :pos?, :pos
      
        # 
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        # 
        # Corresponds to the JSON property `versionCode`
        # @return [Fixnum]
        attr_accessor :version_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @notes = args[:notes] if args.key?(:notes)
          @pos = args[:pos] if args.key?(:pos)
          @url = args[:url] if args.key?(:url)
          @version_code = args[:version_code] if args.key?(:version_code)
        end
      end
    end
  end
end
