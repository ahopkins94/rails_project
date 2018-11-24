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
