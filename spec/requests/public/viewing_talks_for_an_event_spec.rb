require 'rails_helper'

RSpec.describe "Creating a Talk", type: :request do
  context "With no talks accepted for an event" do
    it "Shows a message about no talks registered yet" do
      event = Event.create title: "Example Event"

      get public_event_talks_path(event)

      expect(response).to have_http_status(200)
      expect(response.body).to match("Example Event")
    end
  end
end
