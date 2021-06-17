class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.text :room_intr
      t.integer :room_price
      t.text :room_add

      t.timestamps
    end
  end
end
