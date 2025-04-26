FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "person-#{n}@example.com" }
    password { '123greetings' }
  end

  trait :teacher do
    role_id {1}
  end
  trait :student do
    role_id {0}
  end
end
