class AddLatLongToGame < ActiveRecord::Migration
  def change
    add_column :games, :latitude, :float
    add_column :games, :longitude, :float
    rename_column :games, :location, :address
  end
end
