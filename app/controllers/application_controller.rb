class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :logged_in?

  private
  def current_user
    @current_user ||= User.find(session[:current_user_id])
  end

  def logged_in?
    session[:current_user_id].present?
  end

  def ensure_logged_in
    unless logged_in?
      redirect_to "/auth/identity"
      return false
    end
  end
end
