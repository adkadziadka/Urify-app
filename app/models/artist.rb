class Artist < ApplicationRecord
  has_many :rooms, dependent: :destroy

  validates :name, presence: true, uniqueness: true, length: { maximum: 50}

  def change
    create_table  :artists do |t|
      t.string    :name
      t.integer   :age
      t.string    :image_url

      t.timestamps
end
