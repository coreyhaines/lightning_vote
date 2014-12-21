require 'rails_helper'

RSpec.describe "Publicly viewing an event", type: :request do
  describe "GET /events/:id" do
    let(:event) { Event.create! title: "Example Event" }
    it "Shows the basic event information" do
      get "/events/#{event.id}"

      expect(response).to have_http_status(200)
      expect(response.body).to include("Example Event")
    end
  end
end
