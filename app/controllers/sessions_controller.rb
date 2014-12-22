class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => :create
  def create
    user = User.find_or_create_by_auth_hash(auth_hash)
    if user
      session[:current_user_id] = user.id
      redirect_to "/organizer/events"
    else
      redirect_to "/auth/identity"
    end
  end
  private
  def auth_hash
    request.env['omniauth.auth']
  end
end
