class AddImageToAdminBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_blogs, :image, :string
  end
end
