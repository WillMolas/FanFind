class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
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

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    @event = @event.match
    redirect_to event_path
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to matches_path, status: :see_other
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :match_time, :location_id, :capacity)
  end
end
