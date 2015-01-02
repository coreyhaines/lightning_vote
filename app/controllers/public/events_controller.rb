module Public
  class EventsController < ApplicationController
    def show
      @event = Event.find(params[:id])
      @talks = @event.talks.order("created_at")
      @organizer = @event.organizer
    end
  end
end
