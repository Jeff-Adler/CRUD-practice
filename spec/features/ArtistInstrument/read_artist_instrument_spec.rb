require 'rails_helper'

RSpec.describe 'Reading an artist-instrument', type: :feature do
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
    artist = Artist.find_by(name: "Brent")
    visit artist_path(artist)
    expect(page).to have_content('Brent')
    instrument = Instrument.find_by(name: 'Harmonica')
    visit instrument_path(instrument)
    expect(page).to have_content('Harmonica')
  end
end