require 'rails_helper'

feature 'Logging in' do
  scenario 'it should log in a user' do
    visit '/'
    click_link 'Log In'
    fill_in 'user_email', with: 'test@test.com'
    fill_in 'user_password', with: 'testpassword'
    click_button 'Log in'
    expect(page).to have_content 'Signed in successfully.'
  end
end
