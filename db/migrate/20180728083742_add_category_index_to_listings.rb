class AddCategoryIndexToListings < ActiveRecord::Migration[5.0]
  def change
  		change_table :listings do |t|
  			t.belongs_to :category, index: true
  		end
  end
end
