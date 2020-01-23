class ChangeLongitudeToFloatInHikingtrail < ActiveRecord::Migration[6.0]
  def change
    change_column :hikingtrails, :longitude, :float
  end
end
