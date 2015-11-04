class AddCityToDestination < ActiveRecord::Migration
  def change
    add_column :destinations, :city, :string
  end
end
