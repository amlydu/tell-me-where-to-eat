FactoryBot.define do
  factory :search do
    query { Faker::Internet.url }
    sequence(:query_count)
  end
end
