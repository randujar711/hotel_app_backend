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
    user = User.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email(domain: 'example'),
        password_digest: Faker::Internet.password(min_length: 10, max_length: 20, mix_case: true, special_characters: true),
        phone: Faker::PhoneNumber.cell_phone
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