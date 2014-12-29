require 'rails_helper'

RSpec.describe CurrentUserController, type: :controller do
  describe "GET /current_user" do
    let(:current_user) { User.create username: "Shreya" }
    before do
      allow(controller).to receive(:logged_in?).and_return(true)
      allow(controller).to receive(:current_user).and_return(current_user)
    end
    context "With no events" do
      it "has an empty list" do
        get :show

        expect(response).to have_http_status(200)
        expect(assigns[:events]).to be_empty
      end
    end
    context "With events" do
      it "shows the list" do
        event = current_user.create_event title: "Example Event"

        get :show
        expect(assigns[:events]).to include(event)
      end
    end
  end
end
