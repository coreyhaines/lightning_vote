class EventTalk < ActiveRecord::Base
	has_many :talks
	has_many :events
end
