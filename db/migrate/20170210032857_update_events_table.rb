class UpdateEventsTable < ActiveRecord::Migration[5.0]
  def change
  	change_table :events do |t|
      t.string :hero_image
      t.string :event_thumb
      t.datetime :event_date
      t.string :slug
    end
  end
end
