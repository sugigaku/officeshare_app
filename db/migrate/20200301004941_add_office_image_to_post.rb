class AddOfficeImageToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :office_image, :string
  end
end
