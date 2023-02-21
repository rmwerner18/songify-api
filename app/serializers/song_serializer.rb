class SongSerializer < ActiveModel::Serializer
  attributes :id, :bpm, :swing, :instrument, :melodyInstrument, :melodyKey, :melodyMode, :snareBeats, :kickBeats, :hhBeats, :iBeats, :iiBeats, :iiiBeats, :ivBeats, :vBeats, :viBeats, :viiBeats, :IBeats, :likes, :user, :name, :playlists, :chords

  def chords
    object.song_chords.map {|song_chord| 
      chord = song_chord.chord
      {
        name: chord.name,
        bass: chord.bass,
        quality: chord.quality,
        duration: song_chord.duration, 
        start_beat: song_chord.start_beat
      }
    }
  end
end