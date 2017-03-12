FactoryGirl.define do
  factory :category do
    name 'Food'
    kind Category::KINDS.sample
    user
  end
end
