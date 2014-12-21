module Public
  class TalksController < ApplicationController
    def index
      @event = Event.find(params[:event_id])
      @talks = @event.talks
    end

    def create
      @event = Event.find(params[:event_id])
      @talk = @event.submit_talk(talk_params)
      redirect_to public_event_talks_path(@event)
    end

    private

    def talk_params
      params.require(:talks).permit(:topic, :email, :description)
    end
  end
end
