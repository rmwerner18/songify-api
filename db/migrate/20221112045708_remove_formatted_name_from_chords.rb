class RemoveFormattedNameFromChords < ActiveRecord::Migration[6.0]
  def change
    remove_column :chords, :formattedName, :string
  end
end
