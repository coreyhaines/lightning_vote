module Public
  class TalksController < ApplicationController
    def new
      @event = Event.find(params[:event_id])
      @organizer = @event.organizer
      @talk = @event.talks.new
    end

    def create
      @event = Event.find(params[:event_id])
      @talk = @event.submit_talk(talk_params)
      if @talk.valid?
        redirect_to event_path(@event)
      else
        flash[:notice] = "Could not save your talk. Please check below"
        @organizer = @event.organizer
        render :new
      end
    end

    private

    def talk_params
      params.require(:talk).permit(:topic, :presenter_name, :email, :description)
    end
  end
end
