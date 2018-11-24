require 'rails_helper'

feature 'Logging in' do
  scenario 'it should log in a user' do
    log_in(email: 'test@test.com', password: 'testpassword')
    expect(page).to have_content 'Signed in successfully.'
  end
  scenario 'it should not log in a user if email is incorrect' do
    log_in(email: 'tets@test.com', password: 'testpassword')
    expect(page).to have_content 'Invalid Email or password.'
  end
  scenario 'it should not log in a user if password is incorrect' do
    log_in(email: 'test@test.com', password: 'tetspassword')
    expect(page).to have_content 'Invalid Email or password.'
  end
end
