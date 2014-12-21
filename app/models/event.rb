class Event < ActiveRecord::Base
  has_one :event_talk
  has_many :talks, through: :event_talk

  delegate :submit_talk, to: :event_talk

  validates :title, presence: true
end
