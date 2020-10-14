class CreateChords < ActiveRecord::Migration[6.0]
  def change
    create_table :chords do |t|
      t.string :bass
      t.string :name
      t.string :quality
      t.decimal :freqs, default: [], array: true
      t.string :formattedBass
      t.string :formattedName
      t.string :formattedQuality

      t.timestamps
    end
  end
end
