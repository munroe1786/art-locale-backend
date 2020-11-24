class Museum < ApplicationRecord
    belongs_to :artist
    validates :name, :location, :description, presence: true
end
