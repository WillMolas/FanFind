class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :meta_tags

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :avatar])

    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :avatar])
  end

  # def meta_tags
  #   set_meta_tags description: 'Watch upcoming FIFA World Cup matches with like-minded fans who support your team. Find events near you or create your own.',
  #                 keywords: 'world cup, FIFA, matches, fans, soccer, football, soccer fans, football fans, events, meet up, find fans, team, football team'
  # end
end
