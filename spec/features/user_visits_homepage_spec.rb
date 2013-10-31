require 'spec_helper'

describe "user visits the homepage" do
  let!(:restaurant){FactoryGirl.create(:restaurant)}

  it "can view existing restaurants" do
    visit root_path
    expect(page).to have_content restaurant.name
  end

  it "can add a restaurant" do
    visit root_path
    fill_in "restaurant[name]", with: restaurant.name
    click_button "Create Restaurant"
    expect(page).to have_content restaurant.name
  end

  it "can click on link to visit restaurant detail page" do
    visit root_path
    click_on restaurant.name
    current_path.should eq restaurant_path(restaurant.id)
  end

end




