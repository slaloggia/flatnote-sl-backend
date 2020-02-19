FactoryBot.define do
    factory :user do
        username { "testing_123"}
    end

    factory :random_user, class: User do
        username {Faker::Name.first_name}
    end
end