=begin
#ApproveAPI

#The simple API to request a user's approval on anything via email + sms.

Contact: hello@approveapi.com

=end

# Common files
require 'approveapi_swagger/api_client'
require 'approveapi_swagger/api_error'
require 'approveapi_swagger/version'
require 'approveapi_swagger/configuration'

# Models
require 'approveapi_swagger/models/answer_metadata'
require 'approveapi_swagger/models/create_prompt_request'
require 'approveapi_swagger/models/error'
require 'approveapi_swagger/models/prompt'
require 'approveapi_swagger/models/prompt_answer'
require 'approveapi_swagger/models/prompt_metadata'
require 'approveapi_swagger/models/prompt_status'

# APIs
require 'approveapi_swagger/api/approve_api'

module ApproveAPI
	include ApproveAPISwagger
	class << self
		def create_client(secret_api_key)
			self.configure do |config|
				config.username = secret_api_key
			end
			client = self::ApproveAPI.new
			if block_given?
				yield(client)
			else
				client
			end
		end
	end
end
