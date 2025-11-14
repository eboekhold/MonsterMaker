# Load routes or Devise will raise an exception about not finding valid mapping for users.
Rails.application.reload_routes_unless_loaded

require 'factory_bot'

user = User.create(email: "email@website.com", username: "username", password: "password")
user.confirm

50.times do
  FactoryBot.create(:monster, author: user)
end
