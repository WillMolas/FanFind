class NotificationsController < ApplicationController
  def index
    @notifications = current_user.notifications.order(created_at: :desc)
    current_user.notifications.mark_as_read!
  end
end
