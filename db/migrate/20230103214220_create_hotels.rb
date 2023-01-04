class CreateHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :broom_rating, default: 0
      t.text :address
      t.integer :longitude
      t.integer :latitude
      t.integer :user_id

      t.timestamps
    end
  end
end
