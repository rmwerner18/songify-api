class SongChord < ApplicationRecord
    belongs_to :song
    belongs_to :chord
end
