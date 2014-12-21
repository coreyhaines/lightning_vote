require 'rails_helper'

RSpec.describe User, :type => :model do
  describe "#create_event" do
    it "creates an event associated with the user" do
      user = User.create!(name: "Shreya")
      event = user.create_event(title: "Test example")
      expect(user.events).to include(event)
    end
  end
end

