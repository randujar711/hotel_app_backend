class Hotel < ApplicationRecord
    validates :name, :broom_rating, :address, :longitude, :latitude, presence: true
    

    has_many :rooms 
    has_many :users, through: :rooms
end
