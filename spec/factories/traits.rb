FactoryBot.define do
  factory :trait do
    monster { build(:monster) }
    name { Faker::Games::LeagueOfLegends::masteries }
    description { Faker::Books::Dune.quote }
  end
end
