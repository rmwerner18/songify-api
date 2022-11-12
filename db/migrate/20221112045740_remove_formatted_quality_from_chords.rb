class RemoveFormattedQualityFromChords < ActiveRecord::Migration[6.0]
  def change
    remove_column :chords, :formattedQuality, :string
  end
end
