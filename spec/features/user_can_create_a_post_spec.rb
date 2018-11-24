require 'rails_helper'

feature 'Creating a post' do
  scenario 'it should show a post with a description and image' do
    log_in(email: 'test@test.com', password: 'testpassword')
    create_post(description: 'ralphy shirt', quality: 'never worn', postage_details: 'free', image: "spec/files/images/rlshirt.jpg")
    expect(page).to have_content('ralphy shirt')
    expect(page).to have_content('never worn')
    expect(page).to have_content('free')
    expect(page).to have_css("img[src*='rlshirt']")
  end
end
