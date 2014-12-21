require 'rails_helper'

RSpec.describe "Editing User Account", :type => :request do
  before do
    post "/auth/identity/register", email: "corey@example.com", password: "password", password_confirmation: "password"
  end
  let(:user) { User.last }
  describe "User details information" do
    it "lets me update my general information" do
      patch current_user_path, user: {user_detail_attributes: {name: "Corey Haines"}}
      user.reload
      expect(user.name).to eq("Corey Haines")
    end
  end
end
