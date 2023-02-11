class AddColumnsToSongs < ActiveRecord::Migration[6.0]
  def change
    add_column :songs, :iBeats, :jsonb, null: false, default: '{}'
    add_column :songs, :iiBeats, :jsonb, null: false, default: '{}'
    add_column :songs, :iiiBeats, :jsonb, null: false, default: '{}' 
    add_column :songs, :ivBeats, :jsonb, null: false, default: '{}' 
    add_column :songs, :vBeats, :jsonb, null: false, default: '{}' 
    add_column :songs, :viBeats, :jsonb, null: false, default: '{}' 
    add_column :songs, :viiBeats, :jsonb, null: false, default: '{}' 
    add_column :songs, :IBeats, :jsonb, null: false, default: '{}' 
  end
end
