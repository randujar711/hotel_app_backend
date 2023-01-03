class User < ApplicationRecord
    has_many :rooms 
    has_many :hotels, through: :rooms
end
