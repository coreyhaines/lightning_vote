class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    Event.create(event_creation_params)
    redirect_to new_event_url
  end

private
  def event_creation_params
    params.require(:event).permit(:title, :description, :date, :start_time)
  end
end
