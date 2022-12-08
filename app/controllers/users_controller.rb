class UsersController < ApplicationController
  def show
    @user = current_user
    @bookings = current_user.event_bookings.sort_by { |booking| booking.event.match.match_time }.reverse
    @events = current_user.events.sort_by { |event| event.match.match_time }.reverse
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def index
    @event = Event.find(params[:event_id])
    @users = @event.users
  end

  private

  def user_params
    params.require(:user).permit(:username, :avatar, :team)
  end
end
