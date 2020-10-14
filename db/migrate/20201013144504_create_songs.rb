class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.integer :bpm
      t.string :instrument
      t.string :melodyKey
      t.string :melodyMode
      t.integer :snareBeats, default: [], array: true
      t.integer :kickBeats, default: [], array: true
      t.integer :hhBeats, default: [], array: true
      t.integer :iBeats, default: [], array: true
      t.integer :iiBeats, default: [], array: true
      t.integer :iiiBeats, default: [], array: true
      t.integer :ivBeats, default: [], array: true
      t.integer :vBeats, default: [], array: true
      t.integer :viBeats, default: [], array: true
      t.integer :viiBeats, default: [], array: true
      t.integer :IBeats, default: [], array: true
      t.timestamps
    end
  end
end
