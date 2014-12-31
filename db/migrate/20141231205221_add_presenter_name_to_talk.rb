class AddPresenterNameToTalk < ActiveRecord::Migration
  def change
    add_column :talks, :presenter_name, :string
  end
end
