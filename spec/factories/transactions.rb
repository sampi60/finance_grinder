FactoryGirl.define do
  factory :transaction do
    user
    category
    date '2017-03-24'
    amount 35.99
    note { Faker::Hipster.sentence }
  end
end
