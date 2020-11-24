class Api::V1::ArtistsController < ApplicationController

    def index
        @artists = Artist.all
        render json: @artists 
        #saying - render these accounts as json
        #render json: @artists - @artists is the response in our fetch requests
        #will be sent back to our front end after a fetch request is made into here
    end

    def create
        @artist = Artist.new(artist_params)
        if @artist.save
            render json: @artist
        else
            render json: (error: 'Error creating Artist')
        end

        #if valid info is sent down to create 
        #a new artist then we want to send back that
        #artist to our front end
        #if not, have an error message set up
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
