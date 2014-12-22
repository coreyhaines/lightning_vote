class CurrentUserController < ApplicationController
  def update
    current_user.update_attributes(user_params)
    redirect_to current_user_path
  end

  def edit
    @user = current_user
  end

private
  def user_params
    params.require(:user).permit(user_detail_attributes: [:name]).tap do |whitelisted|
      whitelisted[:user_detail_attributes][:id] = current_user.id
    end
  end
end
