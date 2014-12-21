class CreateEventTalks < ActiveRecord::Migration
  def change
    create_table :event_talks do |t|

      t.timestamps null: false
    end
  end
end
