require 'rails_helper'

feature 'Logging out' do
  scenario 'it should log out a user' do
    sign_up(username: 'ahopkins94', email: 'anouskahopkins@gmail.com', password: 'hello1234')
    click_button 'Log Out'
    expect(page).to have_content 'You have logged out successfully.'
  end
end
