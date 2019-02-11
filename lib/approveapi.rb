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

# APIs
require 'approveapi_swagger/api/approve_api'

module ApproveAPI
  include 'approveapi_swagger/models/answer_metadata'
  include 'approveapi_swagger/models/create_prompt_request'
  include 'approveapi_swagger/models/error'
  include 'approveapi_swagger/models/prompt'
  include 'approveapi_swagger/models/prompt_answer'
  include 'approveapi_swagger/models/prompt_metadata'
  include 'approveapi_swagger/models/prompt_status'

  class << self
    # Customize default settings for the SDK using block.
    #   ApproveAPISwagger.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
