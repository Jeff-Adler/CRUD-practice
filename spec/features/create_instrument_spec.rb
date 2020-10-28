require 'rails_helper'

RSpec.describe 'Creating an instrument', type: :feature do
  scenario 'valid inputs' do
    visit new_instrument_path
    fill_in 'name', with: 'Guitar'
    click_on 'Submit'
    visit instruments_path
    expect(page).to have_content('Guitar')
  end
end