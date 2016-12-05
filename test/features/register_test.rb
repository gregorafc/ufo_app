require 'test_helper'

feature 'Register' do
  
  scenario 'register new user' do
    visit root_path
    page.must_have_content 'Rejestracja'
  end

  scenario 'fill the form' do
  	visit new_user_path

  	fill_in 'Login', with: 'test'
  	fill_in	'Hasło', with: 'test1234'
  	fill_in 'Potwierdzenia hasła', with: 'test1234'
  	click_button 'Potwierdź'

  	page.must_have_content 'Dziekuję za zarejestrowanie nowego administratora'

  end

end
