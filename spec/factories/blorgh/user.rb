FactoryBot.define do
  factory :user do
    sequence(:name) { |n| ActiveSupport::Inflector.transliterate(Faker::Name.name) + n.to_s }
    sequence(:email) { |n| ActiveSupport::Inflector.transliterate(Faker::Internet.email) + n.to_s }
  end
end
