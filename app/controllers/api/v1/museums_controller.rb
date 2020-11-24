class Api::V1::MuseumsController < ApplicationController

    before_action :set_artist

    def index
       #need index of museums associated with a certain artist
    end

    def create
        
    end

    def show
        
    end

    def destroy
        
    end

    private

    def set_artist
        #need to create an artist variable that we can use over and over
        @artist = Artist.find(params[:artist_id])
        #params is coming from the url with the artist ID in it
    end

    #ex request to /api/v1/artists/1/museums
    def museum_params
        params.require(:museum).permit(:artist_id, :name, :location, :description)
    end

end
