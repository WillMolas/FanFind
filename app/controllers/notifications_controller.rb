class NotificationsController < ApplicationController
  def index
    @notifications = current_user.notifications
    current_user.notifications.mark_as_read!
  end
end
