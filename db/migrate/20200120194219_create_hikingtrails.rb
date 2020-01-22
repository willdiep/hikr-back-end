class CreateHikingtrails < ActiveRecord::Migration[6.0]
  def change
    create_table :hikingtrails do |t|
      t.string :name
      t.string :distance
      t.string :location

      t.timestamps
    end
  end
end
