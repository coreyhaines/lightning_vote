class User < ActiveRecord::Base
  has_many :events, foreign_key: "administrator_id"
  def create_event(params)
    events.create(params)
  end
end
