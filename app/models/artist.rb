class Artist < ApplicationRecord
    has_many :museums, dependent: :destroy
    validates :name, presence: true
end
