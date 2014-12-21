require 'rails_helper'

RSpec.describe UserProfile, :type => :model do
  describe "Looking up users based on their profile information" do
    it "returns the user based on profile and uid" do
      user = User.create! name: "Corey"
      user_profile = UserProfile.create! provider: "identity", uid: "7", user_id: user.id

      found_user = UserProfile.lookup_user "identity", "7"
      expect(found_user).to eq(user)
    end
  end

  describe "Creating users from their profile information" do
    it "creates a new user and profile with the given information" do
      user = User.for_profile_information("identity", "5", {email: "corey@example.com"})
      found_user = UserProfile.lookup_user "identity", "5"

      expect(found_user).to eq(user)
    end
  end
end
