require "test_helper"

feature "User" do
  background { visit new_session_path }

  scenario 'log in with invalid credential' do

    fill_in 'Login', with: 'admin'
    fill_in 'Hasło', with: 'xxx'
    click_button 'Zaloguj'

    page.must_have_content 'Login lub hasło nieprawidłowe.'

  end

  scenario 'log in with valid credential' do

    fill_in 'Login', with: 'admin'
    fill_in 'Hasło', with: 'password'
    click_button 'Zaloguj'

    page.must_have_content 'Zalogowany!'

  end

end

feature 'User without log in' do
  
  background { visit root_path }

  scenario 'add city' do
    click_link 'Dodaj nowe miasto'
    page.must_have_content 'Brak autoryzacji'
  end

  scenario 'add contact' do
    click_link 'Dodaj nowy kontakt'
    page.must_have_content 'Brak autoryzacji'
  end

end

feature 'User log in' do
  
  background do
    visit new_session_path

    fill_in 'Login', with: 'admin'
    fill_in 'Hasło', with: 'password'
    click_button 'Zaloguj'

    page.must_have_content 'Zalogowany!'
  end

  scenario 'add city' do
    click_link 'Dodaj nowe miasto'
    page.must_have_content 'Dodaj nowe miasto'
  end

  scenario 'add contact' do
    click_link 'Dodaj nowy kontakt'
    page.must_have_content 'Dodaj nowy kontakt'
  end

end




