require 'rails_helper'

describe "the process for adding areas" do

  before :each do
    admin = User.new({user_name: "Admin", email: "admin@admin.com", admin: true, password: "password"})
    admin.skip_confirmation!
    admin.save!
    visit '/'
    within(".log-in") do
      click_on("Log In")
    end
    fill_in 'Email', :with => "admin@admin.com"
    fill_in 'Password', :with => "password"
    within(".actions") do
      click_on("Log in")
    end
  end

  it 'only allows admins access to the form' do
    expect(page).to have_content "Admin Portal"
  end

  it 'adds an area to the game' do
    click_on "Admin Portal"
    click_link "Add a new area"
    fill_in "Name", :with => "Pirate's Booty"
    click_on "Save"
    expect(page).to have_content "Pirate's Booty"
  end

end
