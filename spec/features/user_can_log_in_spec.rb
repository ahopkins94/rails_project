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
  scenario 'it should not log in a user if email is incorrect' do
    visit '/'
    click_link 'Log In'
    fill_in 'user_email', with: 'tets@test.com'
    fill_in 'user_password', with: 'testpassword'
    click_button 'Log in'
    expect(page).to have_content 'Invalid Email or password.'
  end
  scenario 'it should not log in a user if password is incorrect' do
    visit '/'
    click_link 'Log In'
    fill_in 'user_email', with: 'test@test.com'
    fill_in 'user_password', with: 'tetspassword'
    click_button 'Log in'
    expect(page).to have_content 'Invalid Email or password.'
  end
end
