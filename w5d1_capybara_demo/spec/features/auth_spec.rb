require 'spec_helper'

feature "the signup process" do

  scenario "has a new user page" do
    visit new_user_url
    expect(page).to have_content "Create"
  end

  feature "signing up a user" do
    before(:each) do
      visit new_user_url
      fill_in 'username', :with => "bob"
      fill_in 'password', :with => "password"
      click_on "Create Account"
    end

    scenario "redirects to subs index page after signup" do
      expect(page).to have_content('Subs')
    end

    scenario "shows username on the homepage after signup" do
      expect(page).to have_content('bob')
    end
  end

  feature "with an invalid user" do
    before(:each) do
      visit new_user_url
      fill_in 'Username', :with => "rob"
      click_on "Create Account"
    end

    scenario "re-renders the signup page if an invalid user is given" do
      expect(page).to have_content('Username')
      expect(page).to have_content('Password')
    end
  end

end
