# -*- encoding: utf-8 -*-

=begin
#ApproveAPI

#The simple API to request a user's approval on anything via email + sms.

Contact: hello@approveapi.com

=end

$:.push File.expand_path("../lib", __FILE__)
require "approveapi/version"

Gem::Specification.new do |s|
  s.name        = "approveapi"
  s.version     = ApproveAPI::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["ApproveAPI"]
  s.email       = ["hello@approveapi.com"]
  s.homepage    = "https://approveapi.com"
  s.summary     = "OpenAPI generated client, used internally by the official ruby client &#39;approveapi&#39; gem."
  s.description = "The simple API to request a user's approval on anything via email + sms."
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 1.9"

  s.add_runtime_dependency 'approveapi_swagger', '~> 1.0', '>= 1.0.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = []
  s.executables   = []
  s.require_paths = ["lib"]
end
