class TalksController < ApplicationController
  def index
    @talks = Talk.all
  end

  def create
    @talk = Talk.create!(talk_params)
    redirect_to talks_path
  end

  private

  def talk_params
    params.require(:talks).permit(:topic, :email, :description)
  end
end
