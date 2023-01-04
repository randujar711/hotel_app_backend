# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
room_ids = []
user_ids = []
hotel_ids = []

5.times do 
    random_name = Faker::Name.name
    user = User.create!(
        first_name: random_name.split(' ')[0],
        last_name: random_name.split(' ')[1],
        phone: 9173854075,
        password_digest: '11111111'
    )
    user_ids << user.id
end 
p "users_created"

80.times do 
    letters = ('A'..'Z').to_a
    numbers = (1..99).to_a
    price = (300..3000).to_a
    room = Room.create(
        hotel_id: hotel_ids.sample, 
        user_id: user_ids.sample, 
        room_number: %(#{numbers.sample}#{letters.sample})
    )
    room_ids << room.id
end
p "rooms_created"

2.times do 
    hotel = Hotel.create!(
        name: 'sgfadgd', 
        broom_rating: 5,
        address: Faker::Address.street_address, 
        longitude: 23453, 
        latitude: 3242145
    )
    hotel_ids << hotel.id
end
p "hotels_created"