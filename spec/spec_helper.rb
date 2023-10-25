# frozen_string_literal: true
require 'chefspec'
require 'chefspec/berkshelf'

RSpec.configure do |config|
  config.color     = true
  config.platform  = 'ubuntu'
  config.version   = '16.04'
  config.log_level = :error
  config.raise_errors_for_deprecations!
end
