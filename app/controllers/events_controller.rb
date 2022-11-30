class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  def index
    @match = Match.find(params[:match_id])
    @events = @match.events
  end

  def show
    @event = Event.find(params[:id])
  end
end
