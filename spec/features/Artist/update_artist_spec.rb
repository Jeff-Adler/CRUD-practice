require 'rails_helper'

RSpec.describe 'Updating an artist', type: :feature do
  scenario 'valid inputs' do
    visit new_artist_path
    fill_in 'name', with: 'Mariah'
    click_on 'Submit'
    artist = Artist.find_by(name: "Mariah")
    visit edit_artist_path(artist)
    fill_in 'name', with: 'Maria'
    click_on 'Submit'
    visit artists_path
    expect(page).to have_content('Maria')
  end
end