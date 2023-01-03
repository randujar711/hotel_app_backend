class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.integer :price
      t.boolean :is_available
      t.string :room_number
      t.integer :hotel_id
      t.integer :user_id

      t.timestamps
    end
  end
end
