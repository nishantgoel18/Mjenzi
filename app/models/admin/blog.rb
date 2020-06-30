class Admin::Blog < ApplicationRecord
	belongs_to :category
	mount_uploader :image, ImageUploader

	extend FriendlyId
  	friendly_id :title, use: :slugged

  	def self.search(search)
		if search.present?
			self.where("blogs.name ~* '#{search}'")
		else
			Admin::Blog.all
		end
	end

end
