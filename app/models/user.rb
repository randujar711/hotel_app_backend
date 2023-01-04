class User < ApplicationRecord
    has_secure_password
    validates :first_name, :last_name, :phone, presence: true

    has_many :rooms 
    has_many :hotels, through: :rooms
end
