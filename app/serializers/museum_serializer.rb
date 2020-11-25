class MuseumSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :description, :artist_id
end

#routes are nested, so don't have to have artist_id in the
#serializer.  I'm leaving it in case I want to redesign the 
#routes
