RSpec.configure do |config|
  config.include Devise::Test::ControllerHelpers, type: :controller
  config.include Devise::Test::IntegrationHelpers, type: :feature

  # Fixes Devise routing when running single specs.
  config.before(:each, type: :controller) do
    Rails.application.reload_routes_unless_loaded
  end
  config.before(:each, type: :feature) do
    Rails.application.reload_routes_unless_loaded
  end
end