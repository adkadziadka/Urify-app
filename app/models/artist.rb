class Artist < ApplicationRecord
  has_many :rooms, dependent: :destroy

  validates :name, presence: true, uniqueness: true, length: { maximum: 50}

end
