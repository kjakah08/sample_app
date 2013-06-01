
#Makes a fake user for testing purposes

FactoryGirl.define do
  factory :user do
    name     "KJ Akah"
    email    "kjakah08@gmail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end

