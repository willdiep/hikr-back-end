class RemoveDistanceFromHikingtrail < ActiveRecord::Migration[6.0]
  def change

    remove_column :hikingtrails, :distance, :string
  end
end
