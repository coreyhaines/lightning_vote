class CreateUserDetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
      t.string :name
      t.references :user, null: false, index: true

      t.timestamps null: false
    end
  end
end
