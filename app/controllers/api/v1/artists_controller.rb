class Api::V1::ArtistsController < ApplicationController

    def index
        @artists = Artist.all
        render json: @artists 
        #saying - render these accounts as json
        #render json: @artists - @artists is the response in our fetch requests
        #will be sent back to our front end after a fetch request is made into here
    end

    def create
        #binding.pry
        @artist = Artist.new(artist_params)
        if @artist.save
            render json: @artist
        else
            render json: {error: 'Error creating Artist'}
        end

        #if valid info is sent down to create 
        #a new artist then we want to send back that
        #artist to our front end
        #if not, have an error message set up
    end

    def show
        @artist = Artist.find(params[:id])
        render json: @artist
        #params access the id # and find the account with that id
        #request to ex: /api/v1/artist/1- params access the # and
        #find the artist with that id
    end

    def destroy
        @artist = Artist.find(params[:id])
        @artist.destroy
    end

    #can use before method to keep code DRY--
    #repetitive in show and destroy

    private

    def artist_params
        params.require(:artist).permit(:name, :style)
    end






end
