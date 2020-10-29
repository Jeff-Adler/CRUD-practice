require 'rails_helper'

RSpec.describe 'Deleting an artist-instrument', type: :feature do
  scenario 'valid inputs' do
    visit new_artist_path
    fill_in 'name', with: 'Brent'
    click_on 'Submit'
    visit new_instrument_path
    fill_in 'name', with: 'Harmonica'
    click_on 'Submit'
    visit new_artist_instrument_path
    select 'Brent', from: 'artist_instrument_artist_id'
    select 'Harmonica', from: 'artist_instrument_instrument_id'
    click_on 'Submit'
    visit artist_instruments_path
    click_on 'Delete ArtistInstrument'
    visit artist_instruments_path
    expect(page).to have_no_content('Brent')
    expect(page).to have_no_content('Harmonica')
  end
end