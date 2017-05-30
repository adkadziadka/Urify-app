class CreateJoinTableSongPhoto < ActiveRecord::Migration[5.1]
  def change
    create_join_table :songs, :photos do |t|
      t.index [:song_id, :photo_id]
      t.index [:photo_id, :song_id]
    end
  end
end
