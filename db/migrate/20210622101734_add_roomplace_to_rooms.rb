class AddRoomplaceToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :roomplace, :string
  end
end
