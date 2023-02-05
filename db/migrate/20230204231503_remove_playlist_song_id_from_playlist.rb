class RemovePlaylistSongIdFromPlaylist < ActiveRecord::Migration[6.0]
  def change
    remove_column :playlists, :playlist_song_id, :integer
  end
end
