require 'rails_helper'

feature 'Signing up' do
  scenario 'it should sign up a user' do
    visit '/'
    click_button 'Sign Up'
    fill_in 'username', with: 'ahopkins94'
    fill_in 'email', with: 'anouskahopkins@gmail.com'
    fill_in 'password', with: 'hello1234'
    click_button 'Submit'
    expect(page).to have_content 'Welcome ahopkins94'
  end
end
