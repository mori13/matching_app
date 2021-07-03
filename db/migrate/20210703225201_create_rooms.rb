class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :roomphoto
      t.string :room_name
      t.text :room_intr
      t.integer :room_price
      t.integer :room_place

      t.timestamps
    end
  end
end
