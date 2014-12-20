require 'rails_helper'

RSpec.describe "Creating a Talk", type: :request do
  context "with no talks" do
    describe "GET /talks" do
      it "displays an empty list of talks" do
        get talks_path
        expect(response.body).to_not match(/Foo talk/)
      end
    end
  end

  context "with one talk" do

    let!(:talk) do
      Talk.create!(topic: "Testing talk", email: "foo@example.com")
    end

    describe "GET /talks" do
      it "displays a list of talks" do
        get talks_path
        expect(response.body).to match(/Testing talk/)
      end
    end

    describe "POST talks" do
      let(:new_talk_topic) { "New talk topic" }
      let(:new_talk_email) { "New talk email" }

      it"creates a talk" do
        post talks_path, talks: { topic: new_talk_topic, email: new_talk_email }
        follow_redirect!
        expect(response.body).to match(/#{new_talk_topic}/)
      end
    end
  end
end
