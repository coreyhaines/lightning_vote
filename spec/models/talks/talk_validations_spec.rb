require 'rails_helper'

RSpec.describe Talk, type: :model do

  [:topic, :email].each do |field|
    it "requires the #{field} field" do
      talk = Talk.new

      talk.validate
      expect(talk.errors[field]).to_not be_empty

      talk.send("#{field}=", "Foo")
      talk.validate
      expect(talk.errors[field]).to be_empty
    end
  end
end
