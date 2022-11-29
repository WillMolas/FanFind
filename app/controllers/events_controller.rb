class EventsController < ApplicationController
  def index
    @match = Match.find(params[:match_id])
    @events = @match.events
  end
end
