class AddRoomPlaceToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :room_plase, :string
  end
end
