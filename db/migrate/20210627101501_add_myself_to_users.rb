class AddMyselfToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :myself, :string
  end
end
