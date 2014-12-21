class User < ActiveRecord::Base
  has_many :user_profiles
  has_many :events, foreign_key: "administrator_id"

  def create_event(params)
    events.create(params)
  end

  def self.for_profile_information(provider, uid, info, extra={}, credentials={})
    user = User.create name: info[:email]
    user.user_profiles.create provider: provider, uid: uid, user_id: user.id
    user
  end
end
