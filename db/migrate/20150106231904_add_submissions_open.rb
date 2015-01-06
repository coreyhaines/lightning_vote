class AddSubmissionsOpen < ActiveRecord::Migration
  def change
    add_column :event_talks, :accepting_submissions, :boolean, default: true
  end
end
