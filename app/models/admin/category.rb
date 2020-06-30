class Admin::Category < ApplicationRecord
	has_many :blogs
	
	extend FriendlyId
  	friendly_id :name, use: :slugged
end
