require 'rails_helper'

feature 'Signing up' do
  scenario 'it should sign up a user' do
    sign_up(username: 'ahopkins94', email: 'anouskahopkins@gmail.com', password: 'hello1234')
    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end
  scenario 'it should raise an error if the email is already taken' do
    sign_up(username: 'testuser', email: 'test@testuser.com', password: 'testpassword')
    expect(page).to have_content 'error'
  end
end
