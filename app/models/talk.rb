class Talk < ActiveRecord::Base
  validates :topic, :email, presence: true
end
