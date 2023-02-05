class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :songs
end
