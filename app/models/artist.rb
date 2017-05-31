class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  validates :name, presence: true, uniqueness: true, length: { maximum: 50}
  validates :age, presence: true, uniqueness: false, length: { maximum: 3}
  validates :img_url, presence: true, uniqueness: false, length: { maximum: 100}

  def change
    create_table  :artists do |t|
      t.string    :name
      t.integer   :age
      t.string    :img_url

      t.timestamps
    end
  end
end
