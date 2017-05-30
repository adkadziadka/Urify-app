class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :img_url
			t.string   :artist

      t.timestamps
    end
  end
end
