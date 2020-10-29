require 'rails_helper'

RSpec.describe 'Reading an instrument', type: :feature do
  scenario 'valid inputs' do
    visit new_instrument_path
    fill_in 'name', with: 'Bass'
    click_on 'Submit'
    instrument = Instrument.find_by(name: 'Bass')
    visit instrument_path(instrument)
    expect(page).to have_content('Bass')
  end
end