module SignInSupprt
  def sign_in(user)
    visit root_path
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.user_password
    click_on("Log in")
    expect(current_path).to eq new_user_session_path
