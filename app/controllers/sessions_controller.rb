class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => :create
  def create
    User.for_profile_information(auth_hash[:provider], auth_hash[:uid], auth_hash[:info], auth_hash[:extra])
    redirect_to "/admin/events"
  end
  private
  def auth_hash
    request.env['omniauth.auth']
  end
end
