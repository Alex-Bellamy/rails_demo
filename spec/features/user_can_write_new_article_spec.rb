require 'rails_helper'

feature 'Logged in user can write new article' do
before do
    create(:user, email: 'andre@mail.com', password: '123456') 
    visit root_path
    click_on 'Sign in/Sign Up'
    fill_in 'Email', :with => 'andre@mail.com'
    fill_in 'Password', :with => '123456'
    click_on 'Log in'
    click_on 'Write Article'
    fill_in 'Title', :with => 'Kitchens'
    fill_in 'Content', :with => 'Dine in them'
    click_on 'Create Article'
end

describe 'Signed in user can create an article' do
    it 'User should see success message' do
        expect(page).to have_content 'Article created!'
    end
end
end