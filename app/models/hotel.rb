class Hotel < ApplicationRecord
    has_many :rooms 
    has_many :users, through: :rooms
end
