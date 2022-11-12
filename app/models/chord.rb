class Chord < ApplicationRecord
    # validation for uniqueness
    has_many :song_chords
    has_many :songs, through: :song_chords
end
