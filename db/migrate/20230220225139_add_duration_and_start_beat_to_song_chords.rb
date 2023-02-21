class AddDurationAndStartBeatToSongChords < ActiveRecord::Migration[6.0]
  def change
    add_column :song_chords, :duration, :integer, null: false
    add_column :song_chords, :start_beat, :integer, null: false
  end
end
