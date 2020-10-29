require 'rails_helper'

RSpec.describe 'Deleting an artist', type: :feature do
  scenario 'valid inputs' do
    visit new_artist_path
    fill_in 'name', with: 'Bruce'
    click_on 'Submit'
    artist = Artist.find_by(name: "Bruce")
    visit artist_path(artist)
    click_on 'Delete'
    visit artists_path
    expect(page).to have_no_content('Bruce')
  end
end