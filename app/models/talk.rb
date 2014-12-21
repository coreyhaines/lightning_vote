class Talk < ActiveRecord::Base
  belongs_to :event_talk
  has_one :event, through: :event_talk

  validates :topic, :email, presence: true
end
