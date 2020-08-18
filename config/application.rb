require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Wakariera
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.assets.paths << Rails.root.join("app", "assets", "images", "client","portfolio","team")
    config.action_mailer.smtp_settings = {
      :address        => 'smtp.gmail.com',
      :port           => '587',
      :authentication => :plain,
      :user_name      => 'kinyua@liulo.org',
      :password       => 'dave8394',
      :domain         => 'liulo.org',
      :enable_starttls_auto => true
    }
  end
end
