class MatchesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @matches = Match.all
    @matches = Match.order(match_time: :desc)

    if params[:query].present?
      sql_query = 'team_one ILIKE :query OR team_two ILIKE :query'
      @matches = @matches.where(sql_query, query: "%#{params[:query]}%")
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: "matches/list", locals: { matches: @matches }, formats: [:html] }
    end
  end

end
