class AddTalkTimeAndMaxTalksToEventTalks < ActiveRecord::Migration
  def change
    add_column :event_talks, :talk_time, :integer
    add_column :event_talks, :talk_slots, :integer
  end
end
