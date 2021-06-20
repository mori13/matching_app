class AddNameProfileSelfintrToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :profile, :text
    add_column :users, :selfintr, :text
  end
end
