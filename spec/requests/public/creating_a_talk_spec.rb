require 'rails_helper'

RSpec.describe "Creating a Talk", type: :request do
  describe "POST /events/:event_id/talks" do
    it "creates a talk attached to the event" do
      event = Event.create!(title: "Example Event")
      event_talk = EventTalk.create!(event: event)
      post public_event_talks_path(event), event_id: event.id, talks: { topic: "Example Topic", email: "corey@example.com" }
      follow_redirect!
      expect(response.body).to match("Example Topic")
    end
  end
end
