class AddUserIconToUserPlant < ActiveRecord::Migration[6.0]
  def change
    add_column :user_plants, :user_icon, :string
  end
end
