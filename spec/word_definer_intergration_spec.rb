require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('create word path', {:type => :feature}) do
  it('creates a word and goes to the main index page') do
    visit('/')
    click_on('Add a Word')
    fill_in('name', :with => "Hippopotamus")
    click_on('Enter')
    expect(page).to have_content("Hippopotamus")
  end
end
