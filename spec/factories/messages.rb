FactoryGirl.define do
  factory :message do
    text { Faker::Name.title }
    room
  end
end
