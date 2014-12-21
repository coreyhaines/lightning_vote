class User < ActiveRecord::Base
  has_many :user_profiles
  has_many :events, foreign_key: "administrator_id"

  def create_event(params)
    events.create(params)
  end

  def self.find_or_create_by_auth_hash(auth_hash)
    lookup_user_from_auth_hash(auth_hash) || create_user_from_auth_hash(auth_hash)
  end

  def self.lookup_user_from_auth_hash(auth_hash)
    UserProfile.lookup_user(auth_hash[:provider], auth_hash[:uid])
  end

  def self.create_user_from_auth_hash(auth_hash)
    provider = auth_hash[:provider]
    uid = auth_hash[:uid]
    username = auth_hash[:info][:email]
    User.create(name: username).tap do |new_user|
      new_user.user_profiles.create provider: provider, uid: uid
    end
  end

end
