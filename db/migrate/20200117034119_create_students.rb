class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :college
      t.string :grade
      t.string :integer
      t.string :password
      t.string :icon
      t.text :profile

      t.timestamps
    end
  end
end
