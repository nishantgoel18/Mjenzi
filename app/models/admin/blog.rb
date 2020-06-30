class Admin::Blog < ApplicationRecord
	belongs_to :category
	has_one_attached :image

	extend FriendlyId
  	friendly_id :title, use: :slugged
end
