require 'rails_helper'

RSpec.describe Admin::EventsController, type: :controller do
  describe "GET /admin/events" do
    context "With no events" do
      it "has an empty list" do
        user = User.create name: "Shreya"
        allow(controller).to receive(:current_user).and_return(user)
        get :index

        expect(response).to have_http_status(200)
        expect(assigns[:events]).to be_empty
      end
    end
    context "With events" do
      it "shows the list"
    end
  end
end
