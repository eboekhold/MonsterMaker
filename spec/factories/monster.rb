FactoryBot.define do
  factory :monster do
    name { Faker::Games::Pokemon.name }

    trait :with_traits do
      transient do
        traits_count { 2 }
      end

      after(:create) do |monster, evaluator|
        create_list(:trait, evaluator.traits_count, monster: monster)
      end
    end

    trait :with_actions do
      transient do
        actions_count { 2 }
      end

      after(:create) do |monster, evaluator|
        create_list(:action, evaluator.actions_count, monster: monster)
      end
    end

    trait :with_reactions do
      transient do
        reactions_count { 2 }
      end

      after(:create) do |monster, evaluator|
        create_list(:reaction, evaluator.reactions_count, monster: monster)
      end
    end

    trait :populated do
      type { Faker::Dessert.variety }
      alignment { ["Lawful Evil", "Neutral Evil", "Chaotic Evil", "Lawful Neutral", "Neutral", "Chaotic Neutral", "Lawful Good", "Neutral Good", "Chaotic Good", "Unaligned"].sample }
      
      armorClass { Faker::Number.between(from: 8, to: 30) }
      challenge { Faker::Number.between(from: 0, to: 20) }
      strength { Faker::Number.between(from: 1, to: 30) }
      dexterity { Faker::Number.between(from: 1, to: 30) }
      constitution { Faker::Number.between(from: 1, to: 30) }
      intelligence { Faker::Number.between(from: 1, to: 30) }
      wisdom { Faker::Number.between(from: 1, to: 30) }
      charisma { Faker::Number.between(from: 1, to: 30) }

      hitPoints { Faker::Number.number(digits: 3) }
      hitDice { "#{Faker::Number.between(from: 1, to: 10)}d6"}

      senses { "Darkvision 30 ft. Passive Perception #{Faker::Number.between(from: 8, to: 30)}" }
      speed { "30 ft." }
      languages { "common" }

      with_traits
      traits_count { Faker::Number.between(from: 0, to: 2) }
      with_actions
      actions_count { Faker::Number.between(from: 0, to: 2) }
      with_reactions
      reactions_count { Faker::Number.between(from: 0, to: 2) }
    end
  end
end