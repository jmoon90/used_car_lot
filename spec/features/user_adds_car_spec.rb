require 'spec_helper'

feature 'user' do
  given(:car) { FactoryGirl.create(:car) }

  scenario 'inputs valid information' do
    visit new_car_path
    fill_in :car_color, with: car.color
    fill_in :car_year, with: car.year
    fill_in :car_mileage, with: car.mileage
    click_on "submit"

    expect(page).to have_content("Add Car")
  end

  scenario 'inputs invalid information' do
    visit new_car_path
    click_on "submit"

    error_message(:color)
    error_message(:year)
    error_message(:mileage)
  end

  def error_message(attributes)
    within(".input.car_#{attributes.to_s}") do
      expect(page).to have_content "can't be blank"
    end
  end
end
