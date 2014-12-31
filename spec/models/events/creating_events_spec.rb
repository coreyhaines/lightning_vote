require 'rails_helper'

RSpec.describe Event, :type => :model do
  let(:event_talk_attributes) { {talk_slots: 10, talk_time: 5} }
  let(:event_params) { {title: "Example Event", description: "This is a description", date: Date.today, start_time: "7pm", event_talk_attributes: event_talk_attributes } }

  let(:event) { Event.create event_params }
  let(:event_talk) { event.event_talk }

  it "creates an event talk when creating the event" do
    expect(event_talk).to_not be_nil
    expect(event_talk.talk_slots).to eq(event_talk_attributes[:talk_slots])
    expect(event_talk.talk_time).to eq(event_talk_attributes[:talk_time])
  end

  it "creates an event talk even if the event_talk_attributes are provided" do
    event = Event.create title: "Example Event"
    expect(event.event_talk).to_not be_nil
  end

  it "updates event talk's fields" do
    event.update_attributes event_talk_attributes: {talk_slots: 15, talk_time: 10}
    expect(event.event_talk.talk_slots).to eq(15)
    expect(event.event_talk.talk_time).to eq(10)
  end
end
