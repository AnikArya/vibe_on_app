source "https://rubygems.org"

# Main Rails gem
gem "rails", "~> 7.1.5"

# Ruby QR Code generator (for QR functionality)
gem "rqrcode"

# Boot performance boost
gem "bootsnap", require: "bootsnap/setup"

# Default web server
gem "puma"

# Use sqlite3 in development/test (or change to postgresql if you're using that)
gem "sqlite3", group: [:development, :test]

# For QR image rendering
gem "chunky_png"

# HTTP asset caching/compression and X-Sendfile acceleration
gem "thruster", require: false

# Uncomment if using Active Storage image transformations
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
