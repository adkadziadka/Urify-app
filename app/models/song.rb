class Song < ApplicationRecord
  belongs_to :artist
	has_and_belongs_to_many :photos
	
	validates :title,	 				presence: true
	validates :artist, 				presence: true
	validates :description, 	presence: true
	validates :year,				 	presence: true
	
end


class Photo < ApplicationRecord
  has_and_belongs_to_many :songs
end

