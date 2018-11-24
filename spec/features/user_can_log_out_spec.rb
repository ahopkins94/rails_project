require 'rails_helper'

feature 'Logging out' do
  scenario 'it should log out a user' do
    sign_up(username: 'ahopkins94', email: 'anouskahopkins@gmail.com', password: 'hello1234')
    click_link 'Log Out'
    expect(page).to have_content 'Signed out successfully.'
  end
end
