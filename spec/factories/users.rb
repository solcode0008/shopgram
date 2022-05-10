FactoryBot.define do
  factory :user do
    sequence(:username) { |n| "TEST_NAME#{n}"}
    sequence(:email) { |n| "TEST#{n}@example.com"}
    sequence(:password) { |n| "TEST_PASS#{n}"}
  end
end