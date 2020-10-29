require 'rails_helper'

RSpec.describe 'Creating an artist', type: :feature do
  scenario 'valid inputs' do
    visit new_artist_path
    fill_in 'name', with: 'Steve'
    click_on 'Submit'
    visit artists_path
    expect(page).to have_content('Steve')
  end
end