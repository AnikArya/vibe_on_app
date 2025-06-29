require_relative "boot"

require "rails/all"  # ✅ this will load everything including Active Record

Bundler.require(*Rails.groups)

module MyBookingApp
  class Application < Rails::Application
    config.load_defaults 7.1
  end
end
