require 'rails_helper'

feature 'Signing up' do
  scenario 'it should sign up a user' do
    visit '/'
    click_link 'Sign Up'
    fill_in 'user_username', with: 'ahopkins94'
    fill_in 'user_email', with: 'anouskahopkins@gmail.com'
    fill_in 'user_password', with: 'hello1234'
    fill_in 'user_password_confirmation', with: 'hello1234'
    click_button 'Sign up'
    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end
end
