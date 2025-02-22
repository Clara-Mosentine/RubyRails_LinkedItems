class CreateTextureGroups < ActiveRecord::Migration[8.0]
  def change
    create_table :texture_groups do |t|
      t.string :material
      t.boolean :refined
      t.boolean :smoothRepeat

      t.timestamps
    end
  end
end
