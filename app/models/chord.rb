class Chord < ApplicationRecord
    # validation for uniqueness
    validates :quality, uniqueness: {scope: [:name, :bass]}
    has_many :song_chords
    has_many :songs, through: :song_chords
end
