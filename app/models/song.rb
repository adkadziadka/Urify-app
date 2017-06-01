class Song < ApplicationRecord
  belongs_to :artist
	has_and_belongs_to_many :photos
	
	validates :title,	presence: true, uniqueness: false
	validates :artist, presence: true, uniqueness: false
	validates :description, presence: true, length: {maximum: 500}
	validates :year, presence: true, uniqueness: false, length: {maximum: 4}
	
end
