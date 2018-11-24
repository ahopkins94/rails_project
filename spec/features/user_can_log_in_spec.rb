require 'rails_helper'

feature 'Logging in' do
  scenario 'it should log in a user' do
    visit '/'
    click_link 'Log in'
    fill_in 'username', with: 'testuser'
    fill_in 'password', with: 'testpassword'
    click_button 'Submit'
    expect(page).to have_content 'Successfully logged in.'
  end
end
