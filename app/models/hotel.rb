class Hotel < ApplicationRecord
    # validates :name, :broom_rating, :address, presence: true
    

    has_many :rooms 
    has_many :reservations,through: :rooms
    has_many :users, through: :reservations
end
