class AddNameToPlaylists < ActiveRecord::Migration[6.0]
  def change
    add_column :playlists, :name, :string
  end
end
