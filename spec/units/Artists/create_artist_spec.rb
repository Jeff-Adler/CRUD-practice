require 'rails_helper'

RSpec.describe Artist do 
    it 'has a name' do 
        artist = Artist.new(name: 'Jerry')
        expect(artist.name).to eq('Jerry')
    end 
end 