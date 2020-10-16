class Song < ApplicationRecord
    has_many :song_chords
    has_many :chords, through: :song_chords
    belongs_to :user
    has_many :likes

end
