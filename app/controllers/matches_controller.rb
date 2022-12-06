class MatchesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @matches = Match.all
    @matches = Match.order(match_time: :asc)

    if params[:query].present?
      sql_query = 'team_one ILIKE :query OR team_two ILIKE :query'
      @matches = @matches.where(sql_query, query: "%#{params[:query]}%")
    end

    # if params[:document.checkboxTarget.value].clicked?
    #   @matches = @matches.where(team_one: current_user.team).or(@matches.where(team_two: current_user.team))
    # end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: "matches/list", locals: { matches: @matches }, formats: [:html] }
    end
  end
end
