class EventsController < ApplicationController
  def index
    @match = Match.find(params[:match_id])
    @events = @match.events
  end

  def show
    @event = Event.find(params[:id])
  end
end
