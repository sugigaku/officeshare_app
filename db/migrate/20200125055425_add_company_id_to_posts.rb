class AddCompanyIdToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :company_id, :integer
  end
end
