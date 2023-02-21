class Song < ApplicationRecord
  has_many :song_chords
  has_many :chords, through: :song_chords
  belongs_to :user
  has_many :likes
  has_many :playlist_songs
  has_many :playlists, through: :playlist_songs

  def create_chords(chord_params)
    chord_params["chords"].each do |chord|
      puts chord_params
      puts chord
      existing_chord = Chord.all.find {|c| c['name'] == chord['name'] and c['bass'] == chord['bass'] and c['quality'] == chord['quality']}
      chord_id = nil
      if existing_chord
        chord_id = existing_chord.id 
      else 
        new_chord = Chord.create(chord.except('duration', 'start_beat'))
        chord_id = new_chord.id
      end
      SongChord.create(
        chord_id: chord_id, 
        song_id: self.id,
        duration: chord['duration'], 
        start_beat: chord['start_beat']
      )
    end
  end
end
