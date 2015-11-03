class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :location
      t.text :description
      t.integer :rating
      t.string :picture_url

      t.timestamps null: false
    end
  end
end
