class CreateEventTalks < ActiveRecord::Migration
  def change
    create_table :event_talks do |t|
      t.references :talk, index: true
      t.references :event, index:true
      t.integer :talk_time
      t.integer :talk_slots
      t.text :talk_submission_guidelines
      t.timestamps null: false
    end
  end
end
