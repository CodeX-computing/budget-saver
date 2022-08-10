require 'rails_helper'

RSpec.describe "Users", type: :system do
  before do
    driven_by(:rack_test)
  end

  describe "Users" do
    it "should create a user" do
      visit users_url
      click_on 'New user'

      fill_in 'Name', with: 'test'
      fill_in 'Email', with: 'test@email.com'
      fill_in 'Password', with: 'test'
      fill_in 'Password confirmation', with: 'test'
      click_on 'Create User'

      expect(page).to have_content 'User was successfully created'
      click_on 'Back'

      expect(page).to have_content 'test'
    end

  end
end
