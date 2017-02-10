class UpdateCategoriesTable < ActiveRecord::Migration[5.0]
  def change
  	change_table :categories do |t|
      t.string :color
      t.string :slug
    end
  end
end
