class RemoveOldTables < ActiveRecord::Migration[5.0]
  def up
  	Event.all.each do |e|
  		Listing.create(name: e.name, type: 'Event', created_at: e.created_at, updated_at: e.updated_at)
  	end
  end
  def down
  end
end
