class Song < ApplicationRecord
    has_many :song_chords
    has_many :chords, through: :song_chords
    has_many :song_beats
    has_many :beats, through: :song_beats

    # def create_song_beats(type, array)
    #     array.each do |beat|
    #         existing_beat = Beat.all.find {|b| b == beat.value}
    #         SongBeat.create(beat_id: existing_beat.id, song_id: song.id, type: type)
    #     end
    # end
end
