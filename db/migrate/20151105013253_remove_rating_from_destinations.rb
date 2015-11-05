class RemoveRatingFromDestinations < ActiveRecord::Migration
  def change
    remove_column :destinations, :rating, :integer
  end
end
