class EventBookingsController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @event_booking = EventBooking.new
    @event_booking.user = current_user
    @event_booking.event = @event
    if @event_booking.save
      redirect_to event_path(@event), :notice => "Joined the event succesfully"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @event = Event.find(params[:event_id])
    @event_booking.user = current_user
    @event_booking.event = @event
  end

  def index
    @event_booking.all
  end

  def destroy
    @event = Event.find(params[:id])
    @event_bookings = @event.event_bookings
    @event_bookings.each do |event_booking|
      if event_booking.user_id == current_user.id
        event_booking.destroy
      end
    end
    redirect_to event_path(@event), :notice => "Canceled succesfully"
  end

  private

  def event_booking_params
    params.require(:event_booking).permit(:event_id)
  end

end
