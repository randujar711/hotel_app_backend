class User < ApplicationRecord
    has_secure_password
    validates :first_name, :last_name, :phone, presence: true

    has_many :reservations
    has_many :rooms, through: :reservations
    has_many :hotels, through: :rooms
end
