class CreateOmniauthIdentities < ActiveRecord::Migration
  def change
    create_table :omniauth_identities do |t|
      t.string :email, null: false
      t.string :password_digest, null: false

      t.timestamps null: false
    end
  end
end
