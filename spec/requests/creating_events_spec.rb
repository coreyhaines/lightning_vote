require 'rails_helper'

RSpec.describe "CreatingEvents", :type => :request do
  describe "GET /creating_events" do
    it "lets me create a new event" do
      get new_event_path
      expect(response).to have_http_status(200)

      event_params = {title: "Example Event", description: "This is a description", date: Date.today, start_time: "7pm"}
      post events_path, :event => event_params
      expect(response).to redirect_to(new_event_path)

      event = Event.find_by_title(event_params[:title])
      expect(event.title).to eq(event_params[:title])
      expect(event.description).to eq(event_params[:description])
      expect(event.date).to eq(event_params[:date])
      expect(event.start_time).to eq(event_params[:start_time])
    end
  end
end
