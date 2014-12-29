class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => :create
  def create
    user = User.find_or_create_by_auth_hash(auth_hash)
    if user
      session[:current_user_id] = user.id
      redirect_to "/current_user"
    else
      redirect_to "/auth/identity"
    end
  end

  def destroy
    session[:current_user_id] = nil
    redirect_to root_path
  end

  private
  def auth_hash
    request.env['omniauth.auth']
  end
end
