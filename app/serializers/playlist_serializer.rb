class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :playlist_song_id
end
