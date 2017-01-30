class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :date
      t.string :time
      t.string :description
      t.belongs_to :host, index: true
      t.belongs_to :category, index: true
      t.timestamps
    end
    # add_column :events, :host_id, :integer
    # add_column :events, :category_id, :integer
    # add_index :events, :host_id
    # add_index :events, :category_id

  end
end
