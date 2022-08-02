FactoryBot.define do
  factory :idea do
    sequence(:title){|n| Faker::Hacker.say_something_smart + "#{n}"}
    description{Faker::ChuckNorris.fact}
  end
end
