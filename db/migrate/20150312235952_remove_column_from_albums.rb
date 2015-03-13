class RemoveColumnFromAlbums < ActiveRecord::Migration
  def change
    remove_column :albums, :track_id
  end
end
