require 'rails_helper'

RSpec.describe Event, :type => :model do
  it "requires the title field" do
    event = Event.new

    event.validate
    expect(event.errors[:title]).to_not be_empty

    event.title = "example"
    event.validate
    expect(event.errors[:title]).to be_empty
  end
end
