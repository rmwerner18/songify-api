class SongBeatSerializer < ActiveModel::Serializer
  attributes :id, :beat_id, :song_id, :type
end
