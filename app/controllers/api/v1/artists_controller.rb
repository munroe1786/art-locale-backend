class Api::V1::ArtistsController < ApplicationController

    def index
        @artists = Artist.all
        render json: @artists 
        #saying - render these accounts as json
        #render json: @artists - @artists is the response in our fetch requests
        #will be sent back to our front end after a fetch request is made into here
    end

    def create

    end

    def show

    end

    def destroy

    end

    private

    def artist_params
        params.require(:artist).permit(:name, :style)
    end






end
