require 'rails_helper'

RSpec.describe EventTalk, type: :model do
  describe "#submit_talk" do
    it "creates a talk that is associated with the event" do
      event = Event.create! title: "Example"
      created_talk = event.submit_talk(topic: "Example Topic", email: "corey@example.com", description: "Example Description", presenter_name: "Corey")

      talk = event.talks.find(created_talk.id)
      expect(talk.topic).to eq("Example Topic")
      expect(talk.email).to eq("corey@example.com")
      expect(talk.description).to eq("Example Description")
    end
  end
end
