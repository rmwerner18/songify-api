class LikeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :song_id
end
