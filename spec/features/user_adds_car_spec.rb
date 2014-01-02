require 'spec_helper'

feature 'user' do
  scenario 'inputs valid information' do
    visit new_car_path
    fill_in :color, with: car.color
    fill_in :year, with: car.year
    fill_in :mileage, with: car.mileage
    click_on "submit"

    expect(page).to have_content("Add Car")
  end

  scenario 'inputs invalid information' do
    visit new_car_path

    click_on "submit"

    expect(page).to have_content("Please input valid information")
  end
end
