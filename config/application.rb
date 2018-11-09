require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module App
  class Application < Rails::Application
    config.load_defaults 5.1
    config.eager_load_paths << "#{Rails.root}/lib"
    config.secret_key_base = ENV["SECRET_KEY_BASE"]
  end
end

		# config.load_defaults 5.1 
		# initializes configuration defaults for originally generated Rails version.

		# config.eager_load_paths << "#{Rails.root}/lib"
		# Makes it so that, upon loading the app root directory (the main dir), it loads up the /lib
		# along with any modules you have inside it.
		# AKA pass in the path Rails.root/lib and make it available to the entire application.

    # Settings in config/environments/* take precedence over those specified in class Application.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.