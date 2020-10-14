class SongChordSerializer < ActiveModel::Serializer
  attributes :id, :song_id, :chord_id
end
