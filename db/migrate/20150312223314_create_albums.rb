class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.integer :band_id, null: false
      t.integer :track_id, null: false
      t.string :style, null: false

      t.timestamps null: false
    end

    add_index :albums, :band_id
    add_index :albums, :track_id
  end
end
