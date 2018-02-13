require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangle path', {:type => :feature}) do
  it('processes the user entry and returns what kind of triangle was inputted') do
    visit('/')
    fill_in('sidea', :with => '5')
    fill_in('sideb', :with => '5')
    fill_in('sidec', :with => '5')
    click_button('What is it?!')
    expect(page).to have_content("This is an equilateral triangle")
  end
end
