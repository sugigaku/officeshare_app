class RemoveIntegerToStudent < ActiveRecord::Migration[6.0]
  def change
    remove_column :students,  :integer, :string
  end
end
