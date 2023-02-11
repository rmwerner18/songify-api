class RemoveColumnsFromSongs < ActiveRecord::Migration[6.0]
  def change
     remove_columns :songs, :iBeats, :iiBeats, :iiiBeats, :ivBeats, :vBeats, :viBeats, :viiBeats, :IBeats
  end
end
