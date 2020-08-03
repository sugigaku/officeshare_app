class AddColumnToCompanies < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :name, :string
    add_column :companies, :profile, :text
    add_column :companies, :place, :string
    add_column :companies, :icon, :string
  
  end
end
