class PlaylistSongSerializer < ActiveModel::Serializer
  attributes :id, :playlist_id, :song_id
end
