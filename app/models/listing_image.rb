class ListingImage < ApplicationRecord
	mount_uploader :img, AvatarUploader
	belongs_to :listings

	def self.featured_blogs
    limit(1)
  end
end
