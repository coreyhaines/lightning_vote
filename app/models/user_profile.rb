class UserProfile < ActiveRecord::Base
  belongs_to :user

  def self.lookup_user(provider, uid)
    profile = find_by_provider_and_uid(provider, uid)
    if profile
      profile.user
    else
      nil
    end
  end
end
