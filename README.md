# approveapi_ruby

[![Gem Version](https://badge.fury.io/rb/approveapi.svg)](https://badge.fury.io/rb/approveapi)

Ruby API bindings for the [ApproveAPI HTTP API](https://approveapi.com).

*ApproveAPI is a simple API to request a user's real-time approval on anything via email, sms + mobile push.*

## Features
- [x] Send Prompt
  - [x] web redirect actions (i.e. magic links)
  - [x] custom approve/reject buttons
  - [x] metadata
  - [x] long polling
- [x] Retrieve Prompt
- [x] Check Prompt status 
- [x] Futures support
- [ ] Webhook callbacks

## Install

Install the dependencies:

```shell
# Terminal
$ gem install approveapi

# Gemfile with rubygems.org source
gem 'approveapi'
```

## Import:
```ruby
require 'approveapi'
```

## Getting Started

To get started, we create a client:

```ruby
client = ApproveAPI::create_client('sk_test_yourapikeyhere')
```

Now we can make API calls. For example, let's send an approval prompt to confirm a financial transaction.

```ruby
begin
  response = client.create_prompt(ApproveAPI::CreatePromptRequest.new({
    :body => """A transfer of $1337.45 from acct 0294 to acct 1045 has\
been initiated. Do you want to authorize this transfer?""",
    :user => 'alice@approveapi.com',
    :approve_text => 'Authorize',
    :reject_text => 'Reject',
    :long_poll => true, # Wait for the user's answer
  }))
  if response.answer
    if response.answer.result
      p "Request approved"
    else
      p "Request rejected"
    end
  else
    p "No response from user"
  end
rescue ApproveAPI::ApiError => e
  puts "Exception when calling ApproveApi->create_prompt: #{e}: #{e.response_body}"
end
```

## Documentation

Full documentation is available here: [approveapi.com/docs](https://www.approveapi.com/docs/?ruby).

