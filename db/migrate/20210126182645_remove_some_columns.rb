class RemoveSomeColumns < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :headline
  end
end
