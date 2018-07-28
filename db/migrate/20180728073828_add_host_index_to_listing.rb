class AddHostIndexToListing < ActiveRecord::Migration[5.0]
  def change
  		change_table :listings do |t|
  			t.belongs_to :host, index: true
  			t.string :description
		end
  end
end
