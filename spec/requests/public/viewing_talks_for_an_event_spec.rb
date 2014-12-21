require 'rails_helper'

RSpec.describe "Creating a Talk", type: :request do
  context "With no talks accepted for the event" do
    it "Shows a message about no talks registered yet" do
      event = Event.create title: "Example Event"

      get public_event_talks_path(event)

      expect(response).to have_http_status(200)
      expect(response.body).to match("Example Event")
    end
  end

  context "With talks accepted for the event" do
    it "Shows the talks" do
      event = Event.create title: "Example Event"
      event.create_event_talk
      talk1 = event.submit_talk topic: "Example Topic 1", email: "corey@example.com"
      talk2 = event.submit_talk topic: "Example Topic 2", email: "corey@example.com"

      get public_event_talks_path(event)

      expect(response.body).to match(talk1.topic)
      expect(response.body).to match(talk2.topic)
    end
  end
end
