class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :playlists
end
