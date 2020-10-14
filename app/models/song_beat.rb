class SongBeat < ApplicationRecord
    belongs_to :song
    belongs_to :beat
end
