FactoryGirl.define do
  factory :restaurant do
    name 'Nopa'
    user
  end

  factory :comment do
    content 'get the burger. seriously. so speaketh jeff'
    user
    restaurant
  end
end
