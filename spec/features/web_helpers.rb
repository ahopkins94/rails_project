def sign_up(username:, email:, password:)
  visit '/'
  click_link 'Sign Up'
  fill_in 'user_username', with: username
  fill_in 'user_email', with: email
  fill_in 'user_password', with: password
  fill_in 'user_password_confirmation', with: password
  click_button 'Sign up'
end

def log_in(email:, password:)
  visit '/'
  click_link 'Log In'
  fill_in 'user_email', with: email
  fill_in 'user_password', with: password
  click_button 'Log in'
end

def create_post(description:, quality:, postage_details:, image:)
  click_link 'Post Item'
  fill_in 'Description', with: description
  fill_in 'Quality', with: quality
  fill_in 'postage details', with: postage_details
  attach_file('Image', image)
  click_button 'Post Item'
end
