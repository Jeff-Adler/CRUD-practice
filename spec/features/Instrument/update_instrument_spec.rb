require 'rails_helper'

RSpec.describe 'Updating an instrument', type: :feature do
  scenario 'valid inputs' do
    visit new_instrument_path
    fill_in 'name', with: 'Trombone'
    click_on 'Submit'
    instrument = Instrument.find_by(name: "Trombone")
    visit edit_instrument_path(instrument)
    fill_in 'name', with: 'Alto Trombone'
    click_on 'Submit'
    visit instruments_path
    expect(page).to have_content('Alto Trombone')
  end
end