class User < ActiveRecord::Base
  has_many :events
  def create_event(params)
    events.create(params)
  end
end
