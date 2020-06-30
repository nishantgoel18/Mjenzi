class AddSlugToAdminBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_blogs, :slug, :string
    add_index :admin_blogs, :slug, unique: true
  end
end
