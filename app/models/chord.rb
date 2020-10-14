class Chord < ApplicationRecord
    has_many :song_chords
    has_many :songs, through: :song_chords
end
