class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :belongs
      t.string :college_name
      t.integer :grade
      t.string :icon
      t.text :profile
      t.string :place
      t.string :HP
      t.string :TEL

      t.timestamps
    end
  end
end
