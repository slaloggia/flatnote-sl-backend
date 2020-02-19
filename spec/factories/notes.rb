FactoryBot.define do
    factory :random_note, class: Note do
        association :user, factory: :random_user
        title { Faker::Lorem.sentence }
        content { Faker::Lorem.paragraph }
    end
end