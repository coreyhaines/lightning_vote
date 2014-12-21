class Event < ActiveRecord::Base
  validates :title, presence: true
  has_many :talks
  belongs_to :administrator, class: User

  def submit_talk(params)
    talks.create params
  end
end
