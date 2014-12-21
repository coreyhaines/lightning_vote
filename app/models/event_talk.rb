class EventTalk < ActiveRecord::Base
	has_many :talks
	belongs_to :event

  def submit_talk(params)
    talks.create params
  end

end
