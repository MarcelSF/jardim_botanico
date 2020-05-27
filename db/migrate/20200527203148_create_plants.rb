class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.references :garden, null: false, foreign_key: true
      t.string :image_url
      t.string :name

      t.timestamps
    end
  end
end
