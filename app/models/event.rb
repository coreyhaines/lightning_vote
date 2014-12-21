class Event < ActiveRecord::Base
  validates :title, presence: true
  has_many :talks

  def submit_talk(params)
    talks.create params
  end
end
