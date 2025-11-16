# Load routes or Devise will raise an exception about not finding valid mapping for users.
Rails.application.reload_routes_unless_loaded

require 'factory_bot'

user1 = User.create(email: "email@website.com", username: "user1", password: "password")
user1.confirm

user2 = User.create(email: "two@website.com", username: "user2", password: "password")
user2.confirm

20.times do
  FactoryBot.create(:monster, :populated, author: user1)
end

20.times do
  FactoryBot.create(:monster, :populated, author: user2)
end