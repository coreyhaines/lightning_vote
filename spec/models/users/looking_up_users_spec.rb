require 'rails_helper'

RSpec.describe UserProfile, :type => :model do
  describe "Looking up users based on their profile information" do
    it "it returns existing user if already exists" do
      first_user = User.find_or_create_by_auth_hash(provider: "identity", uid: "5", info: {email: "corey@example.com"})
      expect{User.find_or_create_by_auth_hash(provider: "identity", uid: "5", info: {email: "corey@example.com"})}.to_not change(User, :count)
      second_user = User.find_or_create_by_auth_hash(provider: "identity", uid: "5", info: {email: "corey@example.com"})
      expect(second_user).to eq(first_user)
    end
  end

  describe "Creating users from their profile information" do
    it "creates a new user and profile with the given information" do
      user = User.find_or_create_by_auth_hash(provider: "identity", uid: "5", info: {email: "corey@example.com"})
      found_user = UserProfile.lookup_user "identity", "5"

      expect(found_user).to eq(user)
    end
  end
end
