require 'rails_helper'

RSpec.describe 'Deleting an instrument', type: :feature do
  scenario 'valid inputs' do
    visit new_instrument_path
    fill_in 'name', with: 'Cello'
    click_on 'Submit'
    instrument = Instrument.find_by(name: "Cello")
    visit instrument_path(instrument)
    click_on 'Delete'
    visit instruments_path
    expect(page).to have_no_content('Cello')
  end
end