class CreatePlaylists < ActiveRecord::Migration[6.0]
  def change
    create_table :playlists do |t|
      t.integer :user_id
      t.integer :playlist_song_id

      t.timestamps
    end
  end
end
