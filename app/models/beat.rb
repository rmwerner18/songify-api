class Beat < ApplicationRecord
    has_many :song_beats
    has_many :songs, through: :song_beats
end
