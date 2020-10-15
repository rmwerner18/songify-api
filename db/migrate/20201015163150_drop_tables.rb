class DropTables < ActiveRecord::Migration[6.0]
  def change
    drop_table :beats
    drop_table :song_beats
  end
end
