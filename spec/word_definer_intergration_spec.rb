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

describe('create definition path', {:type => :feature}) do
  it('creates a definition for a given word') do
    visit('/')
    click_link('Hippopotamus')
    fill_in('body', :with => "a large, semi-aquatic land mamman native to Africa.")
    click_on('Add definition')
    expect(page).to have_content("a large, semi-aquatic land mamman native to Africa.")
  end
end

describe('delete word path', {:type => :feature}) do
  it('delets a pre-existing word') do
    visit('/')
    click_link('Hippopotamus')
    click_link('Edit Word')
    click_on('Delete word')
    expect(page).to have_no_content("Hippopotamus")
  end
end
