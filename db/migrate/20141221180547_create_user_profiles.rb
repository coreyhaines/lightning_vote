class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :provider, null: false
      t.string :uid, null: false
      t.references :user, index: true, null: false

      t.timestamps null: false
    end
    add_index :user_profiles, [:provider, :uid]
  end
end
