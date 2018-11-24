require 'rails_helper'

feature 'Creating a post' do
  scenario 'it should show a post with a description and image' do
    log_in(email: 'test@test.com', password: 'testpassword')
    click_link 'Post Item'
    fill_in 'Description', with: 'Ralph Lauren Shirt'
    fill_in 'Quality', with: 'Never worn'
    fill_in 'Postage Details', with: 'Free'
    click_button 'Post Item'
    expect(page).to have_content('Ralph Lauren Shirt')
    expect(page).to have_content('Never worn')
    expect(page).to have_content('Free')
    expect(page).to have_css("img[src*='rlshirt']")
  end
end
