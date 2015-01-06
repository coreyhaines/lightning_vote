module Public
  class TalksController < ApplicationController
    before_filter :find_event
    before_filter :ensure_accepting_submission
    def new
      @organizer = @event.organizer
      @talk = @event.talks.new
    end

    def create
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
    def find_event
      @event = Event.find(params[:event_id])
    end
    def ensure_accepting_submission
      head(:unauthorized) and return false unless @event.accepting_submissions
      true
    end

    def talk_params
      params.require(:talk).permit(:topic, :presenter_name, :email, :description)
    end
  end
end
