class AddLongitudeToHikingtrail < ActiveRecord::Migration[6.0]
  def change
    add_column :hikingtrails, :longitude, :integer
    add_column :hikingtrails, :latitude, :integer
  end
end
