class EventBookingsController < ApplicationController
  # def new
  #   if current_user
  #     @event = Event.find(params[:event_id])
  #     @event_booking = EventBooking.new
  #   else
  #     redirect_to new_user_session_path
  #   end
  # end

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

  private

  def event_booking_params
    params.require(:event_booking).permit(:event_id)
  end

end
