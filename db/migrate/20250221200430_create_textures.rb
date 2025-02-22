class CreateTextures < ActiveRecord::Migration[8.0]
  def change
    create_table :textures do |t|
      t.string :name
      t.string :url
      t.integer :sizePixelsX
      t.integer :sizePixelsY

      t.timestamps
    end
  end
end
