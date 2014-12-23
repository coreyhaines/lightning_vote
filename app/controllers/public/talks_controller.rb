module Public
  class TalksController < ApplicationController
    def index
      @event = Event.find(params[:event_id])
      @talks = @event.talks
    end

    def new
      @event = Event.find(params[:event_id])
      @talk = @event.talks.new
    end

    def create
      @event = Event.find(params[:event_id])
      @talk = @event.submit_talk(talk_params)
      redirect_to event_path(@event)
    end

    private

    def talk_params
      params.require(:talk).permit(:topic, :email, :description)
    end
  end
end
