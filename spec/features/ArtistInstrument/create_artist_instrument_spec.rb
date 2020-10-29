require 'rails_helper'

RSpec.describe 'Creating an artist-instrument', type: :feature do
  scenario 'valid inputs' do
    visit new_artist_path
    fill_in 'name', with: 'Brent'
    click_on 'Submit'
    visit new_instrument_path
    fill_in 'name', with: 'Harmonica'
    click_on 'Submit'
    visit new_artist_instrument_path
    fill_in 'artist', with: 'Brent'
    fill_in 'instrument', with: 'Harmonica'
    click_on 'Submit'
    visit artist_instruments_path
    expect(page).to have_content('Brent')
    expect(page).to have_content('Harmonica')
  end
end