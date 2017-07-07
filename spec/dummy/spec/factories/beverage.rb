FactoryGirl.define do
  factory :beverage do
    trait :beer do
      name 'Stoked Sponge IPA'
      beverage_type 'beer'
    end

    trait :wine do
      name 'Scorched Earth Riesling'
      beverage_type 'wine'
    end
  end
end
