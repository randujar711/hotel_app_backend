# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do 
    user = User.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email(domain: 'example'),
        password_digest: Faker::Internet.password(min_length: 10, max_length: 20, mix_case: true, special_characters: true),
        phone: Faker::PhoneNumber.cell_phone
    )
end 
p "users_created"

80.times do 
    letters = ('A'..'Z').to_a
    numbers = (1..99).to_a
    price = (300..3000).to_a
    room = Room.create(
        hotel_id: Hotel.all.sample, 
        user_id: User.all.sample, 
        room_number: %(#{numbers.sample}#{letters.sample})
    )
end

p "rooms_created"

    hotel = Hotel.create!(name: "Motel 9 3/4", broom_rating: 5, address: Faker::Address.street_address, latitude: "40.752655", longitude: "-73.977296", room_amount: 100, rooms_available: 21)

    hotel1 = Hotel.create!(name: "The Shrieking Shack", broom_rating: 5, address: Faker::Address.street_address, latitude: "40.719566", longitude: "-74.006612", room_amount: 13, rooms_available: 12)

    hotel2 = Hotel.create!(name: "The SlytherInn", broom_rating: 5, address: Faker::Address.street_address, latitude: "40.769862", longitude: "-73.972474", room_amount: 130, rooms_available: 66)

    hotel3 = Hotel.create!(name: "The Leaky Cauldron", broom_rating: 5, address: Faker::Address.street_address, latitude: "40.705554", longitude: "-74.013444", room_amount: 50, rooms_available: 17)

    hotel4 = Hotel.create!(name: "Wizard's Way", broom_rating: 5, address: Faker::Address.street_address, latitude: "40.711449", longitude: "-74.013855", room_amount: 100, rooms_available: 20)

    hotel5 = Hotel.create!(name: "Hagrid's Quality Hut", broom_rating: 5, address: Faker::Address.street_address, latitude: "40.71058", longitude: "-73.9264", room_amount: 200, rooms_available: 0)

    hotel6 = Hotel.create!(name: "The 4 Broomsticks", broom_rating: 5, address: Faker::Address.street_address, latitude: "40.714646", longitude: "-73.996809", room_amount: 150, rooms_available: 0)
    
    hotel7 = Hotel.create!(name: "The Night Bus", broom_rating: 5, address: Faker::Address.street_address, latitude: "40.779437", longitude: "-73.963244", room_amount: 150, rooms_available: 10)

p "hotels_created"
# 10.times do 
#     reservation = Reservation.create!(active: true, user_id: user_ids.sample, room_id: Room.all.sample, price: 1000, start_time: 1/3/21, hotel_id: Hotel.all.sample)
# end
