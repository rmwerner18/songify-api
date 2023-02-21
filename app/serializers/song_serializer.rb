class SongSerializer < ActiveModel::Serializer
  attributes :id, :bpm, :swing, :instrument, :melodyInstrument, :melodyKey, :melodyMode, :snareBeats, :kickBeats, :hhBeats, :iBeats, :iiBeats, :iiiBeats, :ivBeats, :vBeats, :viBeats, :viiBeats, :IBeats, :likes, :user, :name, :playlists, :chords
  # has_many :song_chords

  def chords
    object.song_chords.reduce({}) {|acc, song_chord| 
      chord = song_chord.chord
      acc[song_chord.start_beat] = {
        duration: song_chord.duration, 
        name: chord.name,
        bass: chord.bass,
        quality: chord.quality
        # start beat
      }
      acc
    }
  end
end