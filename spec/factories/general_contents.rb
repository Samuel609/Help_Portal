FactoryBot.define do
  factory :general_content do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    categories { GeneralContent::SETUP }
  end
end
