module Public
  class TalksController < ApplicationController
    def index
      @event = Event.find(params[:event_id])
      @talks = @event.talks
    end
  end
end
