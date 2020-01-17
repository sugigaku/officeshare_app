class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :password
      t.text :profile
      t.string :place
      t.string :email

      t.timestamps
    end
  end
end
