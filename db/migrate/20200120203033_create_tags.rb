class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.references :user, null: false, foreign_key: true
      t.references :hikingtrail, null: false, foreign_key: true
      t.boolean :kidfriendly, default: false, null: false
      t.boolean :dogfriendly, default: false, null: false
      t.boolean :wheelchairaccessible, default: false, null: false
      t.boolean :strollerfriendly, default: false, null: false
      t.boolean :fishing, default: false, null: false
      t.boolean :camping, default: false, null: false
      t.boolean :birdwatching, default: false, null: false

      t.timestamps
    end
  end
end
