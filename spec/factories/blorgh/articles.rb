FactoryBot.define do
  factory :article do
    sequence(:title) { |n| ActiveSupport::Inflector.transliterate(Faker::Name.name) + n.to_s }
    sequence(:text) { |n| ActiveSupport::Inflector.transliterate(Faker::Name.last_name) + n.to_s }
  end
end
