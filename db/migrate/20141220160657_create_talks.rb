class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :topic
      t.string :email
      t.text :description

      t.timestamps null: false
    end
  end
end
