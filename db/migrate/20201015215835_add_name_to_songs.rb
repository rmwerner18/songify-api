class AddNameToSongs < ActiveRecord::Migration[6.0]
  def change
    add_column :songs, :name, :string
  end
end
