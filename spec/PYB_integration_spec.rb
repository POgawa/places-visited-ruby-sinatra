require 'PYB'
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('PYB path', {:type => :feature}) do
  it('Adds and displays places you have visited, and a description')
  visit('/')
  fill_in('location', :with => 'Ukraine')
  fill_in('description' :with => 'a magical place')
  click_button('Send')
  expect(page). have_content('Ukraine', 'a magical place')
