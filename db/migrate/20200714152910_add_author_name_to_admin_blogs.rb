class AddAuthorNameToAdminBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_blogs, :author_name, :string
  end
end
