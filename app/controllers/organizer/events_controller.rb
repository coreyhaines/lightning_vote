module Organizer
  class EventsController < ApplicationController
    before_filter :ensure_logged_in

    def new
      @event = current_user.events.new
    end

    def create
      @event = current_user.create_event(event_creation_params)
      if @event.valid?
        redirect_to current_user_path
      else
        flash[:notice] = "Unable to save event"
        render :new
      end
    end

    def edit
      @event = current_user.events.find(params[:id])
    end

    def update
      @event = current_user.events.find(params[:id])
      if @event.update_attributes(event_creation_params)
        redirect_to current_user_path
      else
        flash[:notice] = "Unable to update event"
        render :edit
      end
    end
    private
    def event_creation_params
      params.require(:event).permit(:title, :description, :logo_url, :date, :start_time,
            event_talk_attributes: [:talk_slots, :talk_time, :talk_submission_guidelines] )
    end
  end
end
