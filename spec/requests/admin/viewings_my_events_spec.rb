require 'rails_helper'

RSpec.describe "Viewing my events", type: :request do
  describe "GET /admin/events" do
    context "With no events" do
      xit "has an empty list" do
        # user = User.create name: "Shreya"
        user = []
        allow(controller).to receive(:current_user).and_return(user)
        get "/admin/events"

        expect(response).to have_http_status(200)
      end
    end
    context "With events" do
      it "shows the list"
    end
  end
end
