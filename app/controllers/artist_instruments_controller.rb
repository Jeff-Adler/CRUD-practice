class ArtistInstrumentsController < ApplicationController

    def index 
        @artist_instruments = ArtistInstrument.all 
    end

    def new
        @artists = Artist.all
        @instruments = Instrument.all
    end

    def create 
        ArtistInstrument.create(artist_instrument_params)
        redirect_to artist_instruments_path
    end

    def destroy
        @artist_instrument = ArtistInstrument.find(params[:id])
        @artist_instrument.destroy
        redirect_to artist_instruments_path
    end

    private

    def artist_instrument_params
        params.require(:artist_instrument).permit(:artist_id,:instrument_id)
    end
end
