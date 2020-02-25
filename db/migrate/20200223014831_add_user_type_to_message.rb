class AddUserTypeToMessage < ActiveRecord::Migration[6.0]
  def change
    add_column :messages, :user_type, :boolean, default: false, null: false
  end
end
