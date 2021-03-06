class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :name
      t.integer :album_id, null: false
      t.text :lyrics
      t.string :style, null: false

      t.timestamps null: false
    end

    add_index :tracks, :album_id
  end
end
