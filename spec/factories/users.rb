FactoryGirl.define do
  factory :user do
    email { Faker::Internet.safe_email }
    password 'qwerty'
    encrypted_password 'qwerty'
    confirmed_at Time.now
  end
end
