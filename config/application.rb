require File.expand_path('../boot', __FILE__)

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
#require 'devise/orm/active_record'
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SeedShop
  class Application < Rails::Application
    config.force_ssl = true
    config.active_record.raise_in_transactional_callbacks = true
    config.serve_static_assets = true
    config.stripe.publishable_key = 'pk_test_B3sUrAfSoRweuCliuU3aumQP'
  end
end
