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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module RevenueSubgroupApiV1
      # 
      #
      # This is an API
      #
      # @example
      #    require 'google/apis/revenue_subgroup_api_v1'
      #
      #    RevenueSubgroupApi = Google::Apis::RevenueSubgroupApiV1 # Alias the module
      #    service = RevenueSubgroupApi::RevenueSubgroupApiService.new
      #
      class RevenueSubgroupApiService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        #  Overrides userIp if both are provided.
        attr_accessor :quota_user

        # @return [String]
        #  IP address of the site where the request originates. Use this if you want to
        #  enforce per-user limits.
        attr_accessor :user_ip

        def initialize
          super('https://automated-revenue-system.appspot.com/_ah/api/', 'revenueSubgroupApi/v1/')
        end
        
        # 
        # @param [String] id
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RevenueSubgroupApiV1::RevenueSubgroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RevenueSubgroupApiV1::RevenueSubgroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'revenueSubgroup/{id}', options)
          command.response_representation = Google::Apis::RevenueSubgroupApiV1::RevenueSubgroup::Representation
          command.response_class = Google::Apis::RevenueSubgroupApiV1::RevenueSubgroup
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [Google::Apis::RevenueSubgroupApiV1::RevenueSubgroup] revenue_subgroup_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RevenueSubgroupApiV1::RevenueSubgroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RevenueSubgroupApiV1::RevenueSubgroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert(revenue_subgroup_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'revenueSubgroup', options)
          command.request_representation = Google::Apis::RevenueSubgroupApiV1::RevenueSubgroup::Representation
          command.request_object = revenue_subgroup_object
          command.response_representation = Google::Apis::RevenueSubgroupApiV1::RevenueSubgroup::Representation
          command.response_class = Google::Apis::RevenueSubgroupApiV1::RevenueSubgroup
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] client_id
        # @param [String] cursor
        # @param [Fixnum] limit
        # @param [String] user_id
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RevenueSubgroupApiV1::CollectionResponseRevenueSubgroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RevenueSubgroupApiV1::CollectionResponseRevenueSubgroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list(client_id: nil, cursor: nil, limit: nil, user_id: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'revenueSubgroup', options)
          command.response_representation = Google::Apis::RevenueSubgroupApiV1::CollectionResponseRevenueSubgroup::Representation
          command.response_class = Google::Apis::RevenueSubgroupApiV1::CollectionResponseRevenueSubgroup
          command.query['clientId'] = client_id unless client_id.nil?
          command.query['cursor'] = cursor unless cursor.nil?
          command.query['limit'] = limit unless limit.nil?
          command.query['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] id
        # @param [Google::Apis::RevenueSubgroupApiV1::RevenueSubgroup] revenue_subgroup_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RevenueSubgroupApiV1::RevenueSubgroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RevenueSubgroupApiV1::RevenueSubgroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch(id, revenue_subgroup_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:patch, 'revenueSubgroup/{id}', options)
          command.request_representation = Google::Apis::RevenueSubgroupApiV1::RevenueSubgroup::Representation
          command.request_object = revenue_subgroup_object
          command.response_representation = Google::Apis::RevenueSubgroupApiV1::RevenueSubgroup::Representation
          command.response_class = Google::Apis::RevenueSubgroupApiV1::RevenueSubgroup
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] id
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove(id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'revenueSubgroup/{id}', options)
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [Google::Apis::RevenueSubgroupApiV1::RevenueSubgroup] revenue_subgroup_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RevenueSubgroupApiV1::RevenueSubgroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RevenueSubgroupApiV1::RevenueSubgroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update(revenue_subgroup_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:put, 'revenueSubgroup/{id}', options)
          command.request_representation = Google::Apis::RevenueSubgroupApiV1::RevenueSubgroup::Representation
          command.request_object = revenue_subgroup_object
          command.response_representation = Google::Apis::RevenueSubgroupApiV1::RevenueSubgroup::Representation
          command.response_class = Google::Apis::RevenueSubgroupApiV1::RevenueSubgroup
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
        end
      end
    end
  end
end
