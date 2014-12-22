class AssociateTalkToEventTalk < ActiveRecord::Migration
  def change
    remove_column :events, :talk_id
    remove_index :event_talks, :talk_id
    remove_column :event_talks, :talk_id
    add_column :talks, :event_talk_id, :integer
    add_index :talks, :event_talk_id
  end
end
