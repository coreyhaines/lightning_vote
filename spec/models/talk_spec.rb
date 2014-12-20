require 'rails_helper'

RSpec.describe Talk, type: :model do

  let(:talk_without_topic) { Talk.new(topic: "", email:"foo@example.com") }
  let(:talk_without_email) { Talk.new(topic: "Testing", email:"") }

  it "requires a topic" do
    expect(talk_without_topic).to_not be_valid
  end

  it "requires an email" do
    expect(talk_without_email).to_not be_valid
  end
end
