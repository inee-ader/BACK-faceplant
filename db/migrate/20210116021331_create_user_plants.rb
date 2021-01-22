class CreateUserPlants < ActiveRecord::Migration[6.0]
  def change
    create_table :user_plants do |t|
      t.integer :user_id
      t.boolean :user_fav
      t.integer :monograph_id
      t.string :common_name
      t.string :plant_name
      t.string :image_url
      t.string :personality
      t.string :insight
      t.string :story_notes
      t.integer :difficulty
      t.integer :sunlight
      t.integer :moisture

      t.timestamps
    end
  end
end
