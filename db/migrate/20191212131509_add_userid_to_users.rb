class AddUseridToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :userid, :string
  end
end
