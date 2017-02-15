class RemoveNumberFromRestaurants < ActiveRecord::Migration[5.0]
  def change
    remove_column :restaurants, :number, :integer
  end
end
