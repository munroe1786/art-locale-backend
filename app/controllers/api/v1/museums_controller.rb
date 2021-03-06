class Api::V1::MuseumsController < ApplicationController

    before_action :set_artist

    def index
       #need index of museums associated with a certain artist
       @museums = @artist.museums
       render json: @museums
    end

    def show
        @museum = Museum.find(params[:id])
        render json: @museum
    end

    def create
        @museum = @artist.museums.build(museum_params)
        if @museum
            @museum.save
            render json: @artist
        else
            render json: {error: 'Error creating Museum'}
        end
        #build automatically builds a museum for this artist
    
    end

    def destroy
        @museum = Museum.find(params["id"])
        @artist = Artist.find(@museum.artist_id)
        @museum.destroy
        render json: @artist
    end

    private

    def set_artist
        #need to create an artist variable that we can use over and over
        @artist = Artist.find(params[:artist_id])
        #params is coming from the url with the artist ID in it
    end

    #example request to /api/v1/artists/1/museums
    
    def museum_params
        params.require(:museum).permit(:artist_id, :name, :location, :description)
    end
end
