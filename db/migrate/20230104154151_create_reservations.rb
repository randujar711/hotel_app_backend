class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.boolean :active
      t.integer :price
      t.datetime :start_time
      t.datetime :end_time
      t.integer :user_id
      t.integer :room_id

      t.timestamps
    end
  end
end
