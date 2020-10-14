class CreateSongBeats < ActiveRecord::Migration[6.0]
  def change
    create_table :song_beats do |t|
      t.integer :beat_id
      t.integer :song_id
      t.string :type

      t.timestamps
    end
  end
end
