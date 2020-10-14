class ChordSerializer < ActiveModel::Serializer
  attributes :id, :bass, :name, :quality, :freqs, :formattedBass, :formattedName, :formattedQuality
end
