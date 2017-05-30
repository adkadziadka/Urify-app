class Photo < ApplicationRecord
	validates :img_url, presence: true
end
