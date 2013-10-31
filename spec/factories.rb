FactoryGirl.define do
  factory :restaurant do
    name 'Nopa'
    user_id 1
  end

  factory :comment do
    content 'get the burger. seriously. so speaketh jeff'
    user_id 1
  end

  factory :user do
    username 'Cricket'
    email 'go@away.com'
  end
end
