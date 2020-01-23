class ChangeLatitudeToFloatInHikingtrail < ActiveRecord::Migration[6.0]
  def change
    change_column :hikingtrails, :latitude, :float
  end
end
