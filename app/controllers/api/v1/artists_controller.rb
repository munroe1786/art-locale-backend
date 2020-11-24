class Api::V1::ArtistsController < ApplicationController

    def index

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
