class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :place
      t.date :date
      t.integer :mxpeople
      t.text :requirement
      t.text :detail

      t.timestamps
    end
  end
end
