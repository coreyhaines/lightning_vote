require 'rails_helper'

RSpec.describe "Creating a Talk", type: :request do
  before do
    post "/auth/identity/register", email: "corey@example.com", password: "password", password_confirmation: "password"
  end
  let(:user) { User.find_by_username("corey@example.com") }
  describe "POST /events/:event_id/talks" do
    it "creates a talk attached to the event" do
      event = user.create_event title: "Example Event"
      get new_public_event_talk_path(event)
      expect(response).to have_http_status(200)

      post public_event_talks_path(event), event_id: event.id, talk: { topic: "Example Topic", email: "corey@example.com", presenter_name: "Corey" }
      follow_redirect!
      expect(response.body).to match("Example Topic")
    end
  end
end
