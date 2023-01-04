class Room < ApplicationRecord
    belongs_to :hotel, optional: true 
    belongs_to :user 
    has_many :reservations
    def create_reservation(price, user)
        Reservation.create(room_id: self.id, price: price, hotel_id: self.hotel.id)
    end
    def add_user_to_reservation (user, reservation)
        user reservation = user
        reservation active = true 
        self.reservation_id = reservation.id
        reservation.save
    end
end
