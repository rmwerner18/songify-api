class CreateSongChords < ActiveRecord::Migration[6.0]
  def change
    create_table :song_chords do |t|
      t.integer :song_id
      t.integer :chord_id

      t.timestamps
    end
  end
end
