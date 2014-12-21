class UserProfile < ActiveRecord::Base
  belongs_to :user

  def self.lookup_user(provider, uid)
    find_by_provider_and_uid(provider, uid).user
  end
end
