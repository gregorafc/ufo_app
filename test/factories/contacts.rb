# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do
    date_contact "2014-08-05"
    object_number 1
    city_id 1
  end
end
