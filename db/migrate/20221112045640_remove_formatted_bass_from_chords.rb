class RemoveFormattedBassFromChords < ActiveRecord::Migration[6.0]
  def change
    remove_column :chords, :formattedBass, :string
  end
end
