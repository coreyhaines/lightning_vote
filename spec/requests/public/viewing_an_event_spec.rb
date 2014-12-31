require 'rails_helper'

RSpec.describe "Publicly viewing an event", type: :request do
  describe "GET /events/:id" do
    let(:organizer) { User.create! username: "Corey" }
    let(:event) { organizer.create_event title: "Example Event" }
    it "Shows the basic event information" do
      get "/events/#{event.id}"

      expect(response).to have_http_status(200)
      expect(response.body).to include("Example Event")
      expect(response.body).to include("Corey")
    end

    it "Shows the list of talks associated with the event" do
      event.submit_talk(topic: "Example Talk 1", email: "corey@example.com", presenter_name: "Corey")
      event.submit_talk(topic: "Example Talk 2", email: "corey@example.com", presenter_name: "Corey")

      get "/events/#{event.id}"

      expect(response.body).to include("Example Talk 1")
      expect(response.body).to include("Example Talk 2")
    end
  end
end
