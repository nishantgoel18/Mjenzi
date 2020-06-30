class AddSlugToAdminCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_categories, :slug, :string
    add_index :admin_categories, :slug, unique: true
  end
end
