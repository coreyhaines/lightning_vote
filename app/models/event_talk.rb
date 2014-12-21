class EventTalk < ActiveRecord::Base
	has_many :talks
	has_one :event
end
