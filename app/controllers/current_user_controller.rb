class CurrentUserController < ApplicationController
  def update
    current_user.update_attributes(params)
    redirect_to current_user_path
  end

private
  def user_params
    params.permit(user_detail: [:name])
  end
end
