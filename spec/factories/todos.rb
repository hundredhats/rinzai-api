FactoryBot.define do
  factory :todo do
    description { "MyText" }
    complete { false }
    list
  end
end
