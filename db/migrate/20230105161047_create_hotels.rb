class CreateHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :hotels do |t|
      t.string :name
      t.integer :broom_rating
      t.string :address
      t.string :latitude
      t.string :longitude
      t.integer :room_amount
      t.integer :rooms_available

      t.timestamps
    end
  end
end
