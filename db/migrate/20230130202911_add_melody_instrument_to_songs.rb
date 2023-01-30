class AddMelodyInstrumentToSongs < ActiveRecord::Migration[6.0]
  def change
    add_column :songs, :melodyInstrument, :string
  end
end
