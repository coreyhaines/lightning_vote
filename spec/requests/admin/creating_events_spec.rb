require 'rails_helper'

RSpec.describe "CreatingEvents", :type => :request do
  let(:event_params) { {title: "Example Event", description: "This is a description", date: Date.today, start_time: "7pm"} }
  before do
    post "/auth/identity/register", email: "corey@example.com", password: "password", password_confirmation: "password"
  end
  describe "Creating a new event" do
    before do
      post admin_events_path, event: event_params
      expect(response).to redirect_to(new_admin_event_path)
    end
    let(:event) { Event.find_by_title(event_params[:title]) }
    it "lets me create a new event" do
      expect(event.title).to eq(event_params[:title])
      expect(event.description).to eq(event_params[:description])
      expect(event.date).to eq(event_params[:date])
      expect(event.start_time).to eq(event_params[:start_time])
    end

    it "links the created event to the logged in user" do
      expect(event.administrator.name).to eq("corey@example.com")
    end
  end

  describe "Editing an event" do
    it "lets me edit an existing event" do
      event = Event.create! event_params

      get edit_admin_event_path(event)
      expect(response).to have_http_status(200)

      patch admin_event_path(event), event: {title: "Updated title"}
      updated_event = Event.find(event.id)
      expect(updated_event.title).to eq("Updated title")
    end
  end
end
