require 'rails_helper'

RSpec.describe 'Reading an artist', type: :feature do
  scenario 'valid inputs' do
    visit new_artist_path
    fill_in 'name', with: 'Jane'
    click_on 'Submit'
    artist = Artist.find_by(name: "Jane")
    visit artist_path(artist)
    expect(page).to have_content('Jane')
  end
end