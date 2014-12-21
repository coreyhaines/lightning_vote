require 'rails_helper'

RSpec.describe Admin::EventsController, type: :controller do
  describe "GET /admin/events" do
    let(:current_user) { User.create username: "Shreya" }
    before do
      allow(controller).to receive(:current_user).and_return(current_user)
    end
    context "With no events" do
      it "has an empty list" do
        get :index

        expect(response).to have_http_status(200)
        expect(assigns[:events]).to be_empty
      end
    end
    context "With events" do
      it "shows the list" do
        event = current_user.create_event title: "Example Event"

        get :index
        expect(assigns[:events]).to include(event)
      end
    end
  end
end
