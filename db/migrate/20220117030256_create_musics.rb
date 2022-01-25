class CreateMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :musics do |t|
      t.integer :group_id
      t.integer :category_id
      t.string :artist
      t.timestamps
    end
  end
end
