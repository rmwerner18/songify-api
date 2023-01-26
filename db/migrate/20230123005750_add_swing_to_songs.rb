class AddSwingToSongs < ActiveRecord::Migration[6.0]
  def change
    add_column :songs, :swing, :decimal, precision:2, scale:2
  end
end
