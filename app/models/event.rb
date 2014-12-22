class Event < ActiveRecord::Base
  has_one :event_talk
  has_many :talks, through: :event_talk
  belongs_to :administrator, class: User

  delegate :submit_talk, to: :event_talk

  validates :title, presence: true

  accepts_nested_attributes_for :event_talk

  after_create ->{create_event_talk}
end
