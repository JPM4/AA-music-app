class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name, null: false
      t.integer :album_id

      t.timestamps null: false
    end

    add_index :bands, :album_id
  end
end
