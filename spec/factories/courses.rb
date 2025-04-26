FactoryBot.define do
  factory :course do
    sequence(:crn) { |n| "#{n}#{n}#{n}#{n}#{n}" }
    sequence(:name) {|n| "Course #{n}" }
    description { "Course description" }
    capacity { 10 }
  end
end
