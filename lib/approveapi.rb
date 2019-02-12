=begin
#ApproveAPI

#The simple API to request a user's approval on anything via email + sms.

Contact: hello@approveapi.com

=end

require 'approveapi_swagger'

module ApproveAPI
	# re-export constants
	include ApproveAPISwagger

	class << self
		def create_client(secret_api_key)
			ApproveAPISwagger.configure do |config|
				config.username = secret_api_key
			end
			client = ApproveAPISwagger::ApproveApi.new
			if block_given?
				yield(client)
			else
				client
			end
		end
	end
end
