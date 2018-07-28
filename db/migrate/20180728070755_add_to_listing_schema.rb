class AddToListingSchema < ActiveRecord::Migration[5.0]
  def change
  	add_column :listings, :date, :datetime
  	add_column :listings, :price, :float
  	add_column :listings, :published, :boolean	
  end
end
