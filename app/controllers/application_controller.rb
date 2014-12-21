class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  private
  def current_user
    # this is here because rspec doubles are verifying. This will eventually be implemented with the actual logged in user when we have logged in users
    User.find(session[:current_user_id])
  end
end
