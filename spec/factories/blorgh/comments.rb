FactoryBot.define do
  factory :comment do
    article_id { 1 }
    text { "MyText" }
  end
end
