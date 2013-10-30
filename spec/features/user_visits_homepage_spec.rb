require 'spec_helper'

describe "user visits the homepage" do
  let!(:restaurant){
    Restaurant.create(name: "Nopa")
  }

  it "can view existing restaurants" do
    visit root_path
    expect(page).to have_content "Nopa"
  end

  it "can add a restaurant" do
    visit root_path
    fill_in "restaurant[name]", with: "The Slanted Door"
    click_button "Create Restaurant"
    expect(page).to have_content "The Slanted Door"
  end

end


