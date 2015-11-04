class RemovePictureUrlFromDestinations < ActiveRecord::Migration
  def change
    remove_column :destinations, :picture_url, :string
  end
end
