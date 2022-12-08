class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :avatar, :team])

    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :avatar, :team])
  end

  def default_url_options
    { host: ENV["DOMAIN"] || "www.fan-find.com" }
  end
end
