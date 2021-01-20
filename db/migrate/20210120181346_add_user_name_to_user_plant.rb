class AddUserNameToUserPlant < ActiveRecord::Migration[6.0]
  def change
    add_column :user_plants, :user_name, :string
  end
end
