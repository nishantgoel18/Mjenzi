class AddAdminCategoryIdToAdminBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_blogs, :category_id, :integer
  end
end
