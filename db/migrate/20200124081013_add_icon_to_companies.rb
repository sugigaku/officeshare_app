class AddIconToCompanies < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :icon, :string
  end
end
