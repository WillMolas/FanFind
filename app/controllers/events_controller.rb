class EventsController < ApplicationController
  def index
    @match = Match.find(params[:match_id])
    @events = @match.events
  end

  def show
    @event = Event.find(params[:id])
    @markers =
      [{
        lat: @event.location.latitude,
        lng: @event.location.longitude,
        # info_window: render_to_string(partial: "info_window", locals: {location: location})
      }]
  end

  def new
    @match = Match.find(params[:match_id])
    @event = Event.new
  end

  def create
    @match = Match.find(params[:match_id])
    @event = Event.new(event_params)
    @event.user = current_user
    @event.match = @match
    if @event.save
      redirect_to event_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :match_time, :location_id)
  end
end
