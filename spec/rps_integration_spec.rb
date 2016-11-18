require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('instances result path', {:type => :feature}) do
  it('displays the number of instances of the inputted word within the inputted string') do
    visit('/')
    fill_in('string', :with => 'dogs and cats and dogs and mice and dogs')
    fill_in('word', :with => 'dogs')
    click_button('Get Schwifty')
    expect(page).to have_content('Instances: 3')
  end
end
