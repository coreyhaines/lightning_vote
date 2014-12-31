class AssociateTalkToEventTalk < ActiveRecord::Migration
  def change
    add_column :talks, :event_talk_id, :integer
    add_index :talks, :event_talk_id
  end
end
