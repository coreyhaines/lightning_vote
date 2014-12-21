class AddAdministratorIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :administrator_id, :integer
  end
end
