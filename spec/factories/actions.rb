FactoryBot.define do
  factory :action do
    monster { build(:monster) }
    name { Faker::Games::Pokemon::move }
    description { Faker::Books::Dune.quote }
  end
end
