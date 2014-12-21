require 'rails_helper'

RSpec.describe "Publicly viewing an event", type: :request do
  describe "GET /events/:id" do
    let(:event) { Event.create! title: "Example Event" }
    it "Shows the basic event information" do
      get "/events/#{event.id}"

      expect(response).to have_http_status(200)
      expect(response.body).to include("Example Event")
    end

    it "Shows the list of talks associated with the event" do
      event.submit_talk(topic: "Example Talk 1", email: "corey@example.com")
      event.submit_talk(topic: "Example Talk 2", email: "corey@example.com")

      get "/events/#{event.id}"

      expect(response.body).to include("Example Talk 1")
      expect(response.body).to include("Example Talk 2")
    end
  end
end
