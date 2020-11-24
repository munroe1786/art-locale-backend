class Artist < ApplicationRecord
    has_many :museums
    validates :name, presence: true
end
