FactoryGirl.define do
  factory :event do
    name              { Faker::Lorem.sentence(1) }
    description       { Faker::Lorem.sentence(40) }
    location          { Faker::Address.city }
    price             { Faker::Commerce.price }
    capacity          { Faker::Number.number }
    listing_name      { Faker::Lorem.sentence(1) }
    includes_food     true
    includes_drinks   true
    starts_at         { Date.today + Faker::Number.number(3).to_i.days }
    ends_at           { ends_at + Faker::Number.number(3).to_i.days }

    user              { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
