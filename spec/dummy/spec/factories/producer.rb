FactoryGirl.define do
  factory :producer do
    trait :brewery do
      name 'Placid Lake Brewery'
      producer_type 'brewery'
    end

    trait :vineyard do
      name 'Roaring Raisin Vineyards'
      producer_type 'vineyard'
    end
  end
end