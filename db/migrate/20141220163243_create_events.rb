class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.text :description
      t.date :date
      t.text :start_time
      t.timestamps null: false
    end
  end
end
