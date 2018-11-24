require 'rails_helper'

feature 'Signing up' do
  scenario 'it should sign up a user' do
    sign_up(username: 'ahopkins94', email: 'anouskahopkins@gmail.com', password: 'hello1234')
    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end
  scenario 'it should raise an error if the email is already taken' do
    sign_up(username: 'nottaken', email: 'test@test.com', password: 'testpassword')
    expect(page).to have_content 'Email has already been taken'
  end
  scenario 'it should raise an error if the username is already taken' do
    sign_up(username: 'testuser', email: 'test@testuser.com', password: 'testpassword')
    expect(page).to have_content 'Username has already been taken'
  end
  scenario 'it should raise an error if the password is less than 6 characters' do
    sign_up(username: 'ahopkins94', email: 'anouskahopkins@gmail.com', password: 'hey')
    expect(page).to have_content 'Password is too short (minimum is 6 characters)'
  end
  scenario 'it should raise an error if the password is more than 10 characters' do
    sign_up(username: 'ahopkins94', email: 'anouskahopkins@gmail.com', password: 'thispasswordisreallylong')
    expect(page).to have_content 'Password is too long (maximum is 20 characters)'
  end
end
