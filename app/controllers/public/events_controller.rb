module Public
  class EventsController < ApplicationController
    def show
      @event = Event.find(params[:id])
      @talks = @event.talks
    end
  end
end
