class AddSiteSeenToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :site_seen, :boolean
  end
end
