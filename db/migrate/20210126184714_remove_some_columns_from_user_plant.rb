class RemoveSomeColumnsFromUserPlant < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_plants, :image_url
    remove_column :user_plants, :user_fav
    remove_column :user_plants, :monograph_id
  end
end
