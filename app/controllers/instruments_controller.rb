class InstrumentsController < ApplicationController
    before_action :instrument, only: [:show, ,:edit, :update, :destroy]

    def index 
        @instruments = Instrument.all
    end

    def show
    end

    def new
    end

    def create 
    end

    def edit 
    end

    def update 
    end

    def destroy 
    end

    private

    def instrument_params
        params.require(:instrument).permit(:name)
    end

    def find_instrument
        @instrument = Instrument.find(params[:id])
    end
end
