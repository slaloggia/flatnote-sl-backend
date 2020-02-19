FactoryBot.define do
    factory :random_note, class: Note do
        user_id { 1 }
        title { Faker::Lorem.sentence }
        content { Faker::Lorem.paragraph }
    end
end