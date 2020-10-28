class InstrumentsController < ApplicationController
    before_action :find_instrument, only: [:show, :edit, :update, :destroy]

    def index 
        @instruments = Instrument.all
    end

    def show
    end

    def new
    end

    def create 
        @instrument = Instrument.create(instrument_params)
        redirect_to instrument_path(@instrument)
    end

    def edit 
    end

    def update 
        @instrument.update(instrument_params)
        redirect_to instrument_path(@instrument)
    end

    def destroy 
        @instrument.destroy
        redirect_to instruments_path
    end

    private

    def instrument_params
        params.require(:instrument).permit(:name)
    end

    def find_instrument
        @instrument = Instrument.find(params[:id])
    end
end
