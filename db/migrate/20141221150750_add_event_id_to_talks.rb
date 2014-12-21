class AddEventIdToTalks < ActiveRecord::Migration
  def change
    add_column :talks, :event_id, :integer
    add_index :talks, :event_id
  end
end
