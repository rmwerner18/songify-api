class SongSerializer < ActiveModel::Serializer
  attributes :id, :bpm, :swing, :instrument, :melodyInstrument, :melodyKey, :melodyMode, :snareBeats, :kickBeats, :hhBeats, :iBeats, :iiBeats, :iiiBeats, :ivBeats, :vBeats, :viBeats, :viiBeats, :IBeats, :chords, :likes, :user, :name
end
