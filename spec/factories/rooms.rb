FactoryGirl.define do
  factory :room do
    title { Faker::Name.title }
  end
end
