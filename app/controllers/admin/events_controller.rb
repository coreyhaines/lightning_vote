module Admin
  class EventsController < ApplicationController

    def index
      @events = current_user.events
    end

    def new
      @event = current_user.events.new
    end

    def create
      @event = Event.new(event_creation_params)
      @event.build_event_talk
      if @event.save
        redirect_to new_admin_event_url
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
        redirect_to new_admin_event_url
      else
        flash[:notice] = "Unable to update event"
        render :edit
      end
    end
    private
    def event_creation_params
      params.require(:event).permit(:title, :description, :date, :start_time)
    end
  end
end
