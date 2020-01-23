class AddDetailsToHikingtrail < ActiveRecord::Migration[6.0]
  def change
    add_column :hikingtrails, :summary, :string
    add_column :hikingtrails, :difficulty, :string
    add_column :hikingtrails, :stars, :float
    add_column :hikingtrails, :url, :string
    add_column :hikingtrails, :image, :string
    add_column :hikingtrails, :length, :float
    add_column :hikingtrails, :ascent, :integer
    add_column :hikingtrails, :descent, :integer
    add_column :hikingtrails, :high, :integer
    add_column :hikingtrails, :low, :integer
    add_column :hikingtrails, :conditionStatus, :string
  end
end
