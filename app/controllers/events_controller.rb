class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_creation_params)
    if @event.save
      redirect_to new_event_url
    else
      flash[:notice] = "Unable to save event"
      render :new
    end
  end

private
  def event_creation_params
    params.require(:event).permit(:title, :description, :date, :start_time)
  end
end
