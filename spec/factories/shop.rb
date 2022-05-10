FactoryBot.define do
  factory :shop do
    association :user
    sequence(:title) { |n| "TEST_TITLE#{n}"}
    sequence(:body) { |n| "TEST_BODY#{n}"}
    sequence(:image_id) { |n| "f14abfd4a8b900c273097f2bc58b3a6d24bf0364c53d7c2943#{n}"}
  end
end