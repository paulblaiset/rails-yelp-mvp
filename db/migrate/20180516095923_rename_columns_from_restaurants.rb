class RenameColumnsFromRestaurants < ActiveRecord::Migration[5.2]
  def change
    rename_column :restaurants, :adress, :address
    rename_column :restaurants, :phonenumber, :phone_number
  end
end
