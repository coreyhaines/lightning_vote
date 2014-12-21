require 'rails_helper'

RSpec.describe "User Authentication - Username / Password", :type => :request do
  it "allows me to sign up with a username and password" do
    post "/auth/identity/register", email: "corey@example.com", password: "password", password_confirmation: "password"

    identity = OmniauthIdentity.find_by_email("corey@example.com")
    expect(identity).to_not be_nil
    user = UserProfile.lookup_user("identity", identity.uid)
    expect(user).to_not be_nil
    expect(user.name).to eq("corey@example.com")
  end
end
