a = ['b','c','v']

FactoryGirl.define do
  factory :restaurant do
    name a.sample
  end
end